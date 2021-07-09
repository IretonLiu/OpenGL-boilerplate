#include "utilities.hpp"

float viewportTransform(float oldX, float newStart, float newEnd, float oldStart, float oldEnd) {
    return newStart + (newEnd - newStart) * ((oldX - oldStart) / (oldEnd - oldStart));
}
