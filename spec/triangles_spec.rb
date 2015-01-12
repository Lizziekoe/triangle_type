require('rspec')
require('triangles')

describe (Triangle) do
  describe("#equilateral?") do
      it("tell us if it's an equilateral triangle") do
        triangle_test = Triangle.new(3, 3, 3)
        expect(triangle_test.equilateral?()).to(eq(true))
      end
  end
end
