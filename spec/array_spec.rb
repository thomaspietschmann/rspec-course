RSpec.describe Array do
  it 'should increase length by 1 when element is added' do
    expect(subject.length).to eq(0)
    subject.push('element')
    expect(subject.length).to eq(1)
  end
end
