#include "trackball_ctrl.hpp"

TrackballControl::TrackballControl(GLFWwindow* _window, Camera* _camera) {
    window = _window;
    camera = _camera;

    glfwSetWindowUserPointer(window, this);
    glfwSetMouseButtonCallback(window, mouseButtonCallback);
    glfwSetCursorPosCallback(window, cursorPositionCallback);
}

void TrackballControl::setCurrMouseCoords(glm::vec3 sphereCoord) {
    currCoord = sphereCoord;
}

glm::vec3 TrackballControl::sphericalProjection(float x, float y) {
    // check if the coordinate is outside of the sphere
    float d = sqrt(x * x + y * y);
    if (d > 1) {
        return glm::vec3(x / d, y / d, 0);  // move to the nearest point on the sphere
    }
    return glm::vec3(x, y, std::sqrt(1 - x * x - y * y));
}

glm::vec3 TrackballControl::normalizeCoord(GLFWwindow* window, float xPos, float yPos, float& xPosNorm, float& yPosNorm) {
    // get window dimensions
    int windowWidth, windowHeight;
    glfwGetWindowSize(window, &windowWidth, &windowHeight);
    // calculate aspect ratio to be used for viewport transformation
    float aspectRatio = (windowWidth * 1.0f) / windowHeight;

    // apply viewport transform to get normalized mouse coordinates
    yPosNorm = viewportTransform(yPos, 1, -1, 0, windowHeight);                             // normalize the y coordinates to between -1 and 1
    xPosNorm = viewportTransform(xPos, -1 * aspectRatio, 1 * aspectRatio, 0, windowWidth);  // normalize the x coordinates according to the aspect ratio
}
