RSpec.describe Hash do
  it 'should start off empty' do
    expect(subject.length).to eq(0)
    subject[:some_key] = 'Some value'
    p subject
    expect(subject.length).to eq(1)
  end

  it 'should return empty hash in new example' do
    p subject
    expect(subject.length).to eq(0)
  end
end
