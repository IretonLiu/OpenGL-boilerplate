#include "trackball_ctrl.hpp"

// callback function for mouse button events
void mouseButtonCallback(GLFWwindow* window, int button, int action, int mods) {
}

TrackballControl::TrackballControl(GLFWwindow* _window, Camera* _camera) {
    window = _window;
    camera = _camera;

    glfwSetWindowUserPointer(window, this);
    glfwSetMouseButtonCallback(window, mouseButtonCallback);
    glfwSetCursorPosCallback(window, cursorPositionCallback);
}

void TrackballControl::setMouseCoords(float x, float y) {
    mouseX = x;
    mouseY = y;
}
