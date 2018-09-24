# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  sides = [a, b, c]
  
  return check_valid_triangle(sides)
end

def check_valid_triangle(array_of_sides)

  raise TriangleError if array_of_sides.min <= 0
  x, y, z = array_of_sides.sort

  raise TriangleError if x + y <= z
  return [:equilateral, :isosceles, :scalene][array_of_sides.uniq.size - 1]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
