RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do
    db = double('Database Connection', connect: true, disconnect: 'Goodbye')

    expect(db.connect).to be true
    expect(db.disconnect).to eql('Goodbye')

    fs = double('File System')
    allow(fs).to receive_messages({
                                    read: 'Romeo and Juliet',
                                    write: false
                                  })

    expect(fs.read).to eql('Romeo and Juliet')
    expect(fs.write).to be false
  end
end
