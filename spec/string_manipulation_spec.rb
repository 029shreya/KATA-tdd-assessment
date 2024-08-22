
  require_relative '../string_manipulation'
describe StringManipulation do
  it 'returns 0 for an empty string' do
    expect(StringManipulation.add("")).to eq(0)
  end
end