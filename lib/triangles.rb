class Triangle
  define_method(:initialize) do |side_a, side_b, side_c|
    @side_a = side_a.to_i()
    @side_b = side_b.to_i()
    @side_c = side_c.to_i()
  end

  define_method(:equilateral?) do
    @side_a == @side_b.&(@side_c)
  end
end
