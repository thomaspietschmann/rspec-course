RSpec.describe 'start_with and end_with matchers' do
  describe 'caterpillar' do
    it 'should check for substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('lar')
      expect(subject).to include('pil')
    end

    it { is_expected.to start_with('cat') }
  end

  describe [:a, :b, :c, :d] do
    it 'should check for elements at beginning or end of array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to start_with(%i[a b])
      expect(subject).to end_with(:d)
    end

    it { is_expected.to start_with(:a) }
  end
end
