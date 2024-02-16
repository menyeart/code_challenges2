class Challenge
  def initialize
  end

  # Return 0 if the array is null, empty or less than 3 elements
  # Find the smallest number remove it
  # Find the largest number remove it
  # Sum up the rest of the array

  def sum_without_min_max(array)
    return 0 if array == nil || array.count <= 3

    sum_extremes = array.min + array.max

    array.sum - sum_extremes
  end
end