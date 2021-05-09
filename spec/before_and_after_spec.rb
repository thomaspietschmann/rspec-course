RSpec.describe 'before and after hooks' do
  before(:context) do
    p 'Before context'
  end

  before(:example) do
    p 'Before example'
  end

  after(:example) do
    p 'After example'
  end

  after(:context) do
    p 'After context'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'is just a random example' do
    expect(3 - 2).to eq(1)
  end
end
