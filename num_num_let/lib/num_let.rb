class NumNumLet
  def initialize
    @sum = 0
    @operator_arr = [method(:add), method(:subtract), method(:mult), method(:divide)]
  end

  def compute(string)
    str_arr = string.split
    sorted_arr = str_arr.sort_by { |substring| substring.scan(/[A-Za-z]/).first }
    sorted_nums = sorted_arr.map { |string| string.gsub(/[A-Za-z]/, "").to_f}
    @sum = sorted_nums.shift
    current_method_pos = 0
    
    sorted_nums.each do |num|
      @operator_arr[current_method_pos].call(num)
      current_method_pos += 1
      current_method_pos = 0  if current_method_pos == 4
    end
    @sum.round(0).to_i
  end
  
  def add(num)
    @sum += num
  end

  def mult(num)
    @sum *= num
  end

  def subtract(num)
    @sum -= num
  end

  def divide(num)
    @sum /= num
  end


end