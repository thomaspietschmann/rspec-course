RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'OUTER Before context' # 1
  end

  before(:example) do
    puts 'OUTER Before example' # 2, 5, 8
  end

  it 'does basic math' do # 3
    expect(2 + 2).to eq(4)
  end

  context 'with condition A' do
    before(:context) do
      puts 'INNER Before context' # 4
    end

    before(:example) do
      puts 'INNER Before example' # 6, 9
    end

    it 'does some more basic math' do # 7
      expect(2 + 3).to eq(5)
    end
    it 'does subtraction as well' do # 10
      expect(10 - 2).to eq(8)
    end
  end
end
