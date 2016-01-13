class Squares

  VERSION = 1

  attr_reader :num_array

  def initialize(max_num)
    @num_array = (1..max_num).to_a
  end

  def square_of_sums
    sum = num_array.reduce(:+)
    sum**2
  end

  def sum_of_squares
    squares = num_array.inject {|sum, num| sum + num**2 }
  end

  def difference
    square_of_sums - sum_of_squares
  end

end
