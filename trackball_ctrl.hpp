#ifndef TRACKBALLCTRL_HPP
#define TRACKBALLCTRL_HPP

#include <iostream>

#include "camera.hpp"
#include "utilities.hpp"

class TrackballControl {
   private:
    GLFWwindow* window;
    Camera* camera;

    float mouseX;
    float mouseY;

    // solution for accessing members of the control class from within the glfw callback
    inline static auto cursorPositionCallback(GLFWwindow* window, double xPos, double yPos) -> void {
        int windowWidth;
        int windowHeight;
        glfwGetWindowSize(window, &windowWidth, &windowHeight);
        float newX = viewportTransform(xPos, -1, 1, 0, windowWidth);
        float newY = viewportTransform(xPos, -1, 1, 0, windowWidth);
        TrackballControl* trackballControl = static_cast<TrackballControl*>(glfwGetWindowUserPointer(window));
        trackballControl->setMouseCoords(newX, newY);
    };

    // // callback function for mouse button events
    // inline static auto mouseButtonCallback(GLFWwindow* window, int button, int action, int mods) -> void {
    //     if (button == GLFW_MOUSE_BUTTON_LEFT&& action == GLFW)
    // }

   public:
    TrackballControl(GLFWwindow* _window, Camera* _camera);
    void setMouseCoords(float x, float y);
};

#endif