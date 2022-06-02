#include "gl_helper.h"

GLFWwindow* window;
GLuint VAO, vertexPositionBuffer, vertexPositionIndexBuffer;

int loadShaders(const char* vertexshader_path, const char* fragmentshader_path) {
    // Create the shaders
    GLuint vertexShaderID = glCreateShader(GL_VERTEX_SHADER);
    GLuint fragmentShaderID = glCreateShader(GL_FRAGMENT_SHADER);

    // Read the Vertex Shader code from the file
    std::string vertexShaderCode;
    std::ifstream vertexShaderStream(vertexshader_path, std::ios::in);
    if (vertexShaderStream.is_open()) {  // Check if the file can be opened
        std::stringstream sstr;
        sstr << vertexShaderStream.rdbuf();
        vertexShaderCode = sstr.str();
        vertexShaderStream.close();
    } else {
        printf("Could not open %s.?\n", vertexshader_path);
        getchar();
        return 0;
    }

    // Read the Fragment Shader code from the file
    std::string fragmentShaderCode;
    std::ifstream fragmentShaderStream(fragmentshader_path, std::ios::in);
    if (fragmentShaderStream.is_open()) {
        std::stringstream sstr;
        sstr << fragmentShaderStream.rdbuf();
        fragmentShaderCode = sstr.str();
        fragmentShaderStream.close();
    } else {
        printf("Could not open %s.?\n", fragmentshader_path);
        getchar();
        return 0;
    }

    GLint result = GL_FALSE;
    int infoLogLength;

    printf("Compiling shader : %s\n", vertexshader_path);
    char const* VertexSourcePointer = vertexShaderCode.c_str();
    glShaderSource(vertexShaderID, 1, &VertexSourcePointer, NULL);
    glCompileShader(vertexShaderID);

    // Check for vertex shader errors
    glGetShaderiv(vertexShaderID, GL_COMPILE_STATUS, &result);
    glGetShaderiv(vertexShaderID, GL_INFO_LOG_LENGTH, &infoLogLength);
    if (infoLogLength > 0) {
        std::vector<char> vertexShaderErrorMessage(infoLogLength + 1);
        glGetShaderInfoLog(vertexShaderID, infoLogLength, NULL, &vertexShaderErrorMessage[0]);
        printf("%s\n", &vertexShaderErrorMessage[0]);
    }

    // Compile fragment fhader
    printf("Compiling shader : %s\n", fragmentshader_path);
    char const* fragmentSourcePointer = fragmentShaderCode.c_str();
    glShaderSource(fragmentShaderID, 1, &fragmentSourcePointer, NULL);
    glCompileShader(fragmentShaderID);

    // Check for fragment shader errors
    glGetShaderiv(fragmentShaderID, GL_COMPILE_STATUS, &result);
    glGetShaderiv(fragmentShaderID, GL_INFO_LOG_LENGTH, &infoLogLength);
    if (infoLogLength > 0) {
        std::vector<char> fragmentShaderErrorMessage(infoLogLength + 1);
        glGetShaderInfoLog(fragmentShaderID, infoLogLength, NULL, &fragmentShaderErrorMessage[0]);
        printf("%s\n", &fragmentShaderErrorMessage[0]);
    }
    // Link the program
    printf("Linking program\n");
    GLuint programID = glCreateProgram();
    glAttachShader(programID, vertexShaderID);
    glAttachShader(programID, fragmentShaderID);
    glLinkProgram(programID);

    // Check the program
    glGetProgramiv(programID, GL_LINK_STATUS, &result);
    glGetProgramiv(programID, GL_INFO_LOG_LENGTH, &infoLogLength);
    if (infoLogLength > 0) {
        std::vector<char> ProgramErrorMessage(infoLogLength + 1);
        glGetProgramInfoLog(programID, infoLogLength, NULL, &ProgramErrorMessage[0]);
        printf("%s\n", &ProgramErrorMessage[0]);
    }

    glDetachShader(programID, vertexShaderID);
    glDetachShader(programID, fragmentShaderID);

    glDeleteShader(vertexShaderID);
    glDeleteShader(fragmentShaderID);

    std::cout << "Shaders attached; Program created" << std::endl;
    return programID;
};

int initGLProgram(const char* programName) {
    if (!glfwInit()) {
        fprintf(stderr, "Failed to initialize GLFW\n");
        getchar();
        return -1;
    }

    glfwWindowHint(GLFW_SAMPLES, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);  // To make MacOS happy; should not be needed
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    // Open the glfw window and create the OpenGL context
    window = glfwCreateWindow(1024, 768, programName, NULL, NULL);
    if (window == NULL) {
        fprintf(stderr, "Failed to open GLFW window.");
        getchar();
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);

    // Initialize GLEW
    if (glewInit() != GLEW_OK) {
        fprintf(stderr, "Failed to initialize GLEW.\n");
        getchar();
        glfwTerminate();
        return -1;
    }

    // Ensure we can capture the escape key being pressed below
    glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);
    std::cout << "GLFW initialized" << std::endl;
    return 0;
}

// main render function
void render(PerspectiveCamera* camera, Geometry* geometry) {
    glEnable(GL_DEPTH_TEST);

    glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);  // changes to wireframe mode
    // white background
    glClearColor(0.5f, 0.5f, 0.5f, 0.0f);
    // std::cout << "Current working directory: " << tmp << std::endl;

    GLuint programID = loadShaders("../src/shaders/VertexShader.vs", "../src/shaders/FragmentShader.fs");
    GLuint uModelView = glGetUniformLocation(programID, "modelView");
    GLuint uProjection = glGetUniformLocation(programID, "projection");

    // generate the vertex array object
    VertexArray* va = new VertexArray();
    // array buffer for vertex position
    VertexBuffer* vb = new VertexBuffer(&geometry->vertices[0], geometry->vertices.size() * sizeof(GLfloat));

    VertexBufferLayout layout;
    layout.Push(GL_FLOAT, 3, GL_FALSE);
    va->AddBuffer(*vb, layout);

    // array buffer for indices
    IndexBuffer* ib = new IndexBuffer(&geometry->indices[0], geometry->indices.size());

    do {
        // Clear the screen
        GLCall(glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT));

        // Use our shader
        GLCall(glUseProgram(programID));

        // Send our transformation to the currently bound shader,
        // TODO: change to work with an actual camera class
        glUniformMatrix4fv(uModelView, 1, GL_FALSE, &camera->getModelViewMat()[0][0]);
        glUniformMatrix4fv(uProjection, 1, GL_FALSE, &camera->getProjectionMatrix()[0][0]);

        va->Bind();
        ib->Bind();
        // glDrawArrays(GL_TRIANGLES, 0, 12 * 3);  // 12*3 indices starting at 0 -> 12 triangles
        GLCall(glDrawElements(GL_TRIANGLES, geometry->indices.size(), GL_UNSIGNED_INT, nullptr));

        // Swap buffers
        glfwSwapBuffers(window);
        glfwPollEvents();
    }  // Check if the ESC key was pressed or the window was closed
    while (glfwGetKey(window, GLFW_KEY_ESCAPE) != GLFW_PRESS &&
           glfwWindowShouldClose(window) == 0);
    // Cleanup VBO and shader
    glDeleteProgram(programID);
    glDeleteVertexArrays(1, &VAO);
    delete vb;
    delete ib;
    // Close OpenGL window and terminate GLFW
    glfwTerminate();
}
