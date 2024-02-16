class Challenge
  def initialize
  end

  def sum_without_min_max(array)
    return 0 if array == nil || array.count <= 3
    sum_extremes = array.min + array.max
    array.sum - sum_extremes
  end

  # Start with the last digit(1s spot) round it using round half up
  # Go through ascending spot(10s, 100s, 1000s etc) rounding each one 
  # Stop rounding and return the number when there is one no zero digit left

  def rounders(int)
    divisor = 10.0
    num = int
      until  check_if_rounded(num) == true do
      num  = (num/divisor).round
      num = (num * divisor).to_i
      divisor *= 10
    end
    num
  end

  def check_if_rounded(num)
    num_arr = num.to_s.split("")
    num_hash = num_arr.tally
    return true if num_hash["0"] == num_arr.count - 1
  end

end