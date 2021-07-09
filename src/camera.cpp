#include "camera.hpp"

PerspectiveCamera::PerspectiveCamera(GLfloat _fov, GLfloat _aspectRatio, GLfloat _near, GLfloat _far) {
    fieldOfView = _fov;
    aspectRatio = _aspectRatio;
    near = _near;
    far = _far;

    projectionMatrix = glm::perspective(glm::radians(fieldOfView), aspectRatio, near, far);

    position = glm::vec3(0, 0, 0);
    target = glm::vec3(0, 0, 0);
    up = glm::vec3(0, 1, 0);
    viewMatrix = glm::lookAt(position, target, up);
    front = target - position;
}

void PerspectiveCamera::setPosition(glm::vec3 newPosition) {
    position = newPosition;
    viewMatrix = glm::lookAt(position, target, up);
    front = target - position;
}

void PerspectiveCamera::setTarget(glm::vec3 newTarget) {
    target = newTarget;
    viewMatrix = glm::lookAt(position, target, up);
    front = target - position;
}

glm::vec3 PerspectiveCamera::getPosition() {
    return position;
}

glm::mat4 PerspectiveCamera::getProjectionMatrix() {
    return projectionMatrix;
}

glm::mat4 PerspectiveCamera::getViewMatrix() {
    return viewMatrix;
}
