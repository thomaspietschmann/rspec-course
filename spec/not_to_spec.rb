RSpec.describe 'not_to method' do
  it 'checks for the inverse of a matcher' do
    expect(5).not_to eq(10)

    expect([1, 2, 3]).not_to equal([1, 2, 3])
    expect([1, 2, 3]).not_to be([1, 2, 3])

    expect(10).not_to be_odd # .odd?
    expect([1, 2, 3]).not_to be_empty # empty?
    expect(nil).not_to be_truthy
    expect(nil).not_to be true

    expect('Philadelphia').not_to start_with('car')
    expect('Philadelphia').not_to end_with('city')

    expect(5).not_to respond_to(:length)

    expect(%i[a b c]).not_to include(:d) # symbols
    expect(%w[a b c]).not_to include('d') # strings

    expect { 11 / 3 }.not_to raise_error
  end
end
