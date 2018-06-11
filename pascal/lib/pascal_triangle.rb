class PascalTriangle
  def factorial(n)

    if n == 0

      fact = 1

    else
  (1..n).inject{ |fact,i| fact*i }

    end

  end

  def pascal_triangle(num)

    (0..num).each do |i|

      (0..i).each do |j|

        print ( factorial(i) / ( factorial(j) * factorial(i-j) ) )

        print " "

      end

      print "\n"

    end

  end
end