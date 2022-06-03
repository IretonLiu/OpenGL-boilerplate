#pragma once

#include "glm/glm.hpp"

float viewportTransform(float oldX, float newStart, float newEnd, float oldStart, float oldEnd);

float angleBetween(glm::vec3 v1, glm::vec3 v2);
