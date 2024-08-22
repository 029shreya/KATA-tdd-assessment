class StringManipulation
  
  def self.add(numbers)
    if numbers.start_with?("//")
      delimiter, numbers = numbers.split("\n", 2)
      delimiter = delimiter[2..-1]
    else
      delimiter = /,|\n/
    end
    numbers.split(delimiter).map(&:to_i).sum
  end


end
