#ifndef GEOMETRY_HPP
#define GEOMETRY_HPP

// openGL libraries
#include <GL/glew.h>

#include <glm/glm.hpp>
// standard c++ libraries
#include <vector>

class Geometry {
   public:
    std::vector<GLfloat> vertices;
    std::vector<GLuint> indices;
};

class BoxGeometry : public Geometry {
   public:
    BoxGeometry(GLfloat width, GLfloat height, GLfloat length);
};

#endif