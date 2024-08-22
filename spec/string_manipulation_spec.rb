
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

end