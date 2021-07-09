#ifndef TRACKBALLCTRL_HPP
#define TRACKBALLCTRL_HPP

#include <iostream>

#include "camera.hpp"
#include "utilities.hpp"

class TrackballControl {
   private:
    GLFWwindow* window;
    Camera* camera;

    // solution for accessing members of the control class from within the glfw callback
    inline static auto cursorPositionCallback(GLFWwindow* window, double xPos, double yPos) -> void {
        std::cout << xPos << "," << yPos << std::endl;
        int windowWidth;
        int windowHeight;
        glfwGetWindowSize(window, &windowWidth, &windowHeight);
        float newX = viewportTransform(xPos, -1, 1, 0, windowWidth);
        float newY = viewportTransform(yPos, 1, -1, 0, windowHeight);
        TrackballControl* trackballControl = static_cast<TrackballControl*>(glfwGetWindowUserPointer(window));
        trackballControl->setMouseCoords(newX, newY);
    };

    // callback function for mouse button events
    inline static auto mouseButtonCallback(GLFWwindow* window, int button, int action, int mods) -> void {
        TrackballControl* trackballControl = static_cast<TrackballControl*>(glfwGetWindowUserPointer(window));

        if (button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS) {
            std::cout << trackballControl->mouseX << "," << trackballControl->mouseY << std::endl;
        }
    }

   public:
    float mouseX;
    float mouseY;

    TrackballControl(GLFWwindow* _window, Camera* _camera);
    void setMouseCoords(float x, float y);
};

#endif