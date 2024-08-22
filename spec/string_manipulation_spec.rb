
  require_relative '../string_manipulation'
describe StringManipulation do
  it 'returns 0 for an empty string' do
    expect(StringManipulation.add("")).to eq(0)
  end
  it 'returns the number when a single number is passed' do
    expect(StringManipulation.add("1")).to eq(1)
  end

  it 'returns the sum of two numbers separated by a comma' do
    expect(StringManipulation.add("1,2")).to eq(3)
  end

  it 'returns the sum of multiple numbers' do
    expect(StringManipulation.add("1,2,3")).to eq(6)
  end

  it 'returns the sum of numbers separated by commas or newlines' do
    expect(StringManipulation.add("1\n2,3")).to eq(6)
  end

  it 'supports different delimiters specified at the start of the string' do
    expect(StringManipulation.add("//;\n1;2")).to eq(3)
  end

end