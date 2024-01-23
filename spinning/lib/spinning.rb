class Spinning
  def initialize
  end

  def reverse_words(string)
    string.split(" ")
    .map { |word| word.length > 4 ? word.reverse : word }
    .join(" ")
  end

end