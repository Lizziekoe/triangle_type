require('rspec')
require('triangles')

describe (Triangle) do
  describe("#triangle_type") do
    it("tell us if it's an equilateral triangle") do
      triangle_test = Triangle.new(3, 3, 3)
      expect(triangle_test.triangle_type()).to(eq("equilateral"))
    end

    it("tell us if it's a scalene triangle") do
      triangle_test = Triangle.new(3, 1, 2)
        expect(triangle_test.triangle_type()).to(eq("scalene"))
      end

    it("tells us if it's an isosceles triangle") do
      triangle_test = Triangle.new(3, 3, 1)
        expect(triangle_test.triangle_type()).to(eq("isosceles"))
    end

    it("tells us if it is not a valid triangle") do
      triangle_test = Triangle.new(2, 2, 8)
        expect(triangle_test.triangle_type()).to(eq("invalid triangle dimensions"))
      end

  end
end
