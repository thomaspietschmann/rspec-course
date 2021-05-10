RSpec.describe Array do
  subject(:sally) do
    %w[blonde girl]
  end

  it 'should shorten its length when pop method invoked' do
    expect(sally.length).to eq(2)
    sally.pop
    expect(subject.length).to eq(1)
  end

  it 'should have a length of 2' do
    expect(sally.length).to eq(2)
  end
end
