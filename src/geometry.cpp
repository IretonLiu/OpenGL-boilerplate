#include "geometry.hpp"

BoxGeometry::BoxGeometry(GLfloat width, GLfloat height, GLfloat length) {
    vertices = std::vector<GLfloat>{
        -0.5f, 0.5f, 0.5f,
        -0.5f, -0.5f, 0.5f,
        0.5f, 0.5f, 0.5f,
        0.5f, -0.5f, 0.5f,
        0.5f, 0.5f, -0.5f,
        0.5f, -0.5f, -0.5f,
        -0.5f, 0.5f, -0.5f,
        -0.5f, -0.5f, -0.5f};

    indices = std::vector<GLuint>{
        // front
        0, 1, 2,
        2, 1, 3,
        // right
        2, 3, 4,
        4, 3, 5,
        // back
        4, 5, 7,
        6, 4, 7,
        // left
        6, 7, 1,
        0, 6, 1,
        // top
        0, 2, 6,
        6, 2, 4,
        // bottom
        1, 7, 3,
        3, 7, 5};
}