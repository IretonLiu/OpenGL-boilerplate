#ifndef TRACKBALLCTRL_HPP
#define TRACKBALLCTRL_HPP

#include <cmath>
#include <iostream>

#include "camera.hpp"
#include "glm/gtx/string_cast.hpp"
#include "utilities.hpp"

class TrackballControl {
   private:
    GLFWwindow* window;
    Camera* camera;
    glm::vec3 currCoord;

    // solution for accessing members of the control class from within the glfw callback
    inline static auto cursorPositionCallback(GLFWwindow* window, double xPos, double yPos) -> void {
        //std::cout << xPos << "," << yPos << std::endl;

        float xPosNorm, yPosNorm;
        normalizeCoord(window, xPos, yPos, xPosNorm, yPosNorm);
        TrackballControl* trackballControl = static_cast<TrackballControl*>(glfwGetWindowUserPointer(window));
        // check if the left mouse button is pressed
        int state = glfwGetMouseButton(window, GLFW_MOUSE_BUTTON_LEFT);
        if (state == GLFW_PRESS) {
            //std::cout << glm::to_string(sphericalProjection(xPosNorm, yPosNorm)) << std::endl;
            trackballControl->setCurrMouseCoords(sphricalProjection(xPosNorm, yPosNorm));
        }
    };

    //callback function for mouse button events
    inline static auto mouseButtonCallback(GLFWwindow* window, int button, int action, int mods) -> void {
        TrackballControl* trackballControl = static_cast<TrackballControl*>(glfwGetWindowUserPointer(window));

        if (button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS) {
            // get cursor position
            double xPos, yPos;
            glfwGetCursorPos(window, &xPos, &yPos);
            float xPosNorm, yPosNorm;
            normalizeCoord(window, xPos, yPos, xPosNorm, yPosNorm);

            //std::cout << glm::to_string(sphericalProjection(xPosNorm, yPosNorm)) << std::endl;
            trackballControl->currCoord = sphericalProjection(xPosNorm, yPosNorm);
        }
    }

    // project 2D x and y onto a unit sphere(trackball)
    // TODO: potentially make dynamic trackball size
    static glm::vec3 sphericalProjection(float x, float y);

    // normalize the coordinate from screen to [-1, 1]
    static glm::vec3 normalizeCoord(GLFWwindow* window, float xPos, float yPos, float& xPosNorm, float& yPosNorm);

   public:
    float currMouseX;
    float currMouseY;
    float newMouseX;
    float newMouseY;

    TrackballControl(GLFWwindow* _window, Camera* _camera);
    void setCurrMouseCoords(glm::vec3 sphereCoord);
};

#endif