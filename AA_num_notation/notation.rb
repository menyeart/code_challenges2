require 'bigdecimal'

class Notation
  def initialize
  end

  def convert(x)
 
    sci_formatted = '%.50e' %x
    exponent = sci_formatted.slice(-3..-1).to_i
    base_num = sci_formatted.slice(0..4).to_f.floor(2).round(2)
    small_letters = (["K", "M", "B", "T"] * 3).group_by { |x| x }.values.flatten
    big_letters = (("a".."z").to_a * 3).sort
    first_big_let = ("a".."z").to_a[(exponent / 92).floor()]
    second_big_let = big_letters[(exponent % 78) - 15]
    small_num_let = small_letters[exponent - 3]
    let_num_hash = {"K" => 1000, "M" => 1_000_000, "B" => 1_000_000_000, "T" => 1_000_000_000_000}

    if x.abs < 1000
      x < 0 ? x = x.ceil(2) : x = x.floor(2)
      x = BigDecimal(x, 3).to_f.floor(2).round(2)
      x = x.to_i if x / x.to_i == 1 || x == 0
      x.to_s
    elsif exponent < 15
      x = x / let_num_hash[small_num_let].to_f
      x < 0 ? x = x.ceil(2) : x = x.floor(2)



      x = x.to_s.split("")[0..2].join.to_f if x.to_s.split("").count > 5
      x = BigDecimal(x, 3).floor(3).round(2).to_f if x.to_s.split("").count > 3
      

      x = x.to_i if x / x.to_i == 1
      x.to_s + small_num_let
    else
      
      if big_letters[(exponent % 78) - 16] != second_big_let
        base_num 
      elsif big_letters[(exponent % 78) - 14] == second_big_let
        base_num *= 10
      else
        base_num *= 100
      end
      base_num = base_num.to_i.to_s if base_num % 1 == 0 
      num = base_num.to_s + first_big_let + second_big_let
    end
  end
end