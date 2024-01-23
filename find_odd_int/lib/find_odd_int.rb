class OddInt
  def initialize
  end

  # Iterate over the array
  # For each number in the array, make an entry in a hash if it doesnt exist and then increment a count for it if it doesnt
  # Iterate over the hash values and find the single odd values
  # return the key that corresponds to the odd value

  def find_odd_int(int_arr)
    int_arr.tally.each { |k,v| return k if v.odd? }
  end

end