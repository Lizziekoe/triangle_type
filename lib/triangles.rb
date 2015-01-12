class Triangle
  define_method(:initialize) do |side_a, side_b, side_c|
    @side_a = side_a.to_i()
    @side_b = side_b.to_i()
    @side_c = side_c.to_i()
  end

  define_method(:triangle_type) do


    if (@side_a.+(@side_b)).<(@side_c)
      return "invalid triangle dimensions"

    elsif (@side_b.+(@side_c)).<(@side_a)
      return "invalid triangle dimensions"

    elsif (@side_a.+(@side_c)).<(@side_b)
      return "invalid triangle dimensions"

    elsif (@side_a == @side_b).&(@side_a == @side_c).&(@side_b==@side_c)
      return "equilateral"

    elsif (@side_a != @side_b).&(@side_a != @side_c).&(@side_b != @side_c)
      return "scalene"

    else
      return "isosceles"
    end

  end

end
