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
def check_negative__and_zero_sides(a, b, c)
  return if [a, b, c].select { |i| i <= 0 }.empty?
  raise TriangleError
end

def check_triangle_rool(a, b, c)
  return unless a + b <= c || a + c <= b || b + c <= a
  raise TriangleError
end

def triangle(a, b, c)
  # WRITE THIS CODE
  check_negative__and_zero_sides(a, b, c)
  check_triangle_rool(a, b, c)

  return :equilateral if [a, b, c].uniq.size == 1
  return :isosceles if [a, b, c].uniq.size == 2
  :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
