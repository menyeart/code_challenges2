class Notation
  def initialize
  end

  def convert(number)
    if number.abs < 1000
      if number.class == Integer
        number.to_s
      elsif number.floor(2) == 0
        return "0"
      else 
        number > 0 ? number.floor(2).to_s : number.ceil(2).to_s
      end
    elsif number.abs > 1.0e+15
      over = (number - 100_000_000_000) / 1000
      range = ("a".."z")
      
      first_letter = "a"
      second_letter = range[over / 1000]
      
      number.to_s.concat(first_letter).concat(second_letter)
    else 

      letters = ["K","M","B","T"]
      letter = letters[(number / 1000) - 1]
      scientific = ("%.2e" %number)

      if number % 10 ^(("%.2e" %number)[-2..-1].to_i) == 0
        binding.pry
        (number / (("%.2e" %number)[-2..-1].to_i)) + letter
      else
        binding.pry
        
        
      end


      
       



    end
  end
end