class Notation
  def initialize
  end

  # def convert(x)
  #   if x.abs < 1
  #     if x.class == Integer || x % 1 == 0 || x == 0
  #       x.to_i.to_s
  #     elsif x.floor(2) == 0
  #       return "0"
  #     else 
  #       x > 0 ? x.floor(2).to_s : x.ceil(2).to_s
  #     end
  #   elsif x.abs < 1000
  #     x > 0 ? x.floor(2).to_i.to_s : x.ceil(2).to_i.to_s
  #   elsif x.abs >= 1.0e+15
  #     list = ("a".."z").to_a
 
  #     if x > 1e+90
  #       over_first = x / 10e+90
  #       over_second = (x - 10e+90) / 1000000000000000000.0
  #       first_letter = list[over_first.to_i + 1]
  #       second_letter = list[over_second.to_i + 1]
        
  #     else
  #       over = (x - 1000_000_000_000_000) / 1000000000000000000.0
  #       over_first = x / 10e+90
  #       first_letter = "a"
  #       second_letter = list[over_second.to_i]
        
  #       ("%.2e" %x).slice(0,4).to_f % 1 == 0 ? ("%.2e" %x).slice(0, 1).to_s.concat(first_letter).concat(second_letter) :("%.2e" %x).slice(0,4).to_s.concat(first_letter).concat(second_letter)
  #     end
  
  #   else 
  #     num_len = x.to_i.to_s.chars.length
  #     abbrev = 0
  #     if num_len > 12
  #       letter = "T"
  #       abbrev = x / 1_000_000_000_000.0
  #     elsif num_len < 7
  #       letter = "K"
  #       abbrev = x / 1_000.0
  #     elsif num_len > 9 and num_len < 12
  #       abbrev = x / 1_000_000_000.0
  #       letter = "B"
  #     else
  #       letter = "M"
  #       abbrev = x / 1_000_000.0
  #     end
 
  #     if abbrev >= 10
  #       abbrev.to_i.to_s + letter
  #     else
  #       abbrev.round(2) % 1 == 0 ? abbrev.to_i.to_s + letter : abbrev.floor(2).to_s + letter
  #     end
  #   end
  # end


  def convert(x)
    sci_formatted = '%.4e' %x
    exponent = sci_formatted.slice(-2..-1)
    base_num = sci_formatted.slice(0..4).to_f.floor(2).round(2)
    small_letters = ["K", "M", "B", "T"]
    big_letters = ("a".."z").to_a
    first_big_let = big_letters[(exponent / 90).floor()]
    second_big_let = big_letters[(exponent % 90)]

    binding.pry
  end
end