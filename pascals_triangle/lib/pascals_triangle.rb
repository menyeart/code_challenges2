class PascalsTriangle 
  def intiailize
  end


  def create_rows(number_rows)
    triangle = []
    k = 0
    j = 1
    n = 0
    number_rows.times do 
      j.times do 
        cell = factorial(n) / (factorial(k) * factorial((n) - k ))
        triangle << cell
        k += 1
      end
      n += 1
      k = 0
      j += 1
    end
    triangle
  end


  def factorial(n)
    return 1 if n == 1 || n == 0
    n * factorial(n - 1)
  end
end