#pragma once

#include <glm/glm.hpp>

using namespace glm;

class FVert {
public:
  dvec3 vert;
  int index;
  float force;
  bool fixed;

  FVert();
  FVert(vec3 v, int i);
  void translate(double x, double y, double z);
};
