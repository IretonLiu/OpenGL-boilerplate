#include "gl_helper.h"

//
#include "camera.h"
#include "geometry.h"
#include "trackball_ctrl.h"

int main() {
    int programID = initGLProgram("Boilerplate");

    if (programID == -1) {
        fprintf(stderr, "something went wrong while initializing");
        return programID;
    }

    PerspectiveCamera *camera = new PerspectiveCamera(70.0, 4.0 / 3.0, 0.1, 100.0);
    camera->setPosition(glm::vec3(0, 3, 3));
    // BoxGeometry *box = new BoxGeometry(1.0f, 1.0f, 1.0f);
    PlaneGeometry *plane = new PlaneGeometry(1.0f, 1.0f, 10, 10);
    TrackballControl *trackBallControl = new TrackballControl(window, camera);
    // TODO: implement scene graphs
    // render(camera, box);
    render(camera, plane);
}