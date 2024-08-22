class StringManipulation
  
  def self.add(numbers)
    delimiter = /,|\n/
    if numbers.start_with?("//")
      delimiter, numbers = numbers.split("\n", 2)
      delimiter = delimiter[2..-1]
    end

    nums = numbers.split(delimiter).map(&:to_i)
    negatives = nums.select { |n| n < 0 }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
    nums.sum
  end
end
