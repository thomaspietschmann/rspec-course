RSpec.describe 'satisfy matcher' do
  subject { 'racecar' }
  # subject { 'racecars' }

  it 'is a palindrome' do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  it 'can except a custom error message' do
    expect(subject).to satisfy('be a palindrome') do |value|
      value == value.reverse
    end
    # fail will return: expected "racecars" to be a palindrome
  end
end
