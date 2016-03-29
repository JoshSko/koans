require File.expand_path(File.dirname(__FILE__) + '/neo')

# You need to write the triangle method in the file 'triangle.rb'
require './triangle.rb'

class AboutTriangleProject2 < Neo::Koan
  # The first assignment did not talk about how to handle errors.
  # Let's handle that part now.
  def test_illegal_triangles_throw_exceptions
    def triangle(a, b, c)
	  if a==b && a==c
	    return :equilateral
	  end
	  if (a==b && a!=c) || (a==c && a!=b) || (b==c && b!=a)
	    return :isosceles
	  end
	  if a!=b && a!=c && b!=c
	    return :scalene
	  end
	  if a==0 && b==0 && c==0
	    raise new.TriangleError
	  end
	end
  end
end