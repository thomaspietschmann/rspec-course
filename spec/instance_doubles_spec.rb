class Person
  def a
    sleep(3)
    'Hello'
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: 'Hello', b: 20)
      expect(person.a).to eq('Hello')
      expect(person.b).to eq(20)
    end
  end

  describe 'instance double' do
    it 'can only implements that are defined on the class' do
      # person = instance_double(Person, a: 'Hello', b: 20) # will return error: the Person class does not implement the instance method: b
      person = instance_double(Person, a: "Hello")
      # allow(person).to receive(:a).with(3, 10).and_return('Hello')
      expect(person.a).to eq('Hello')
    end
  end
end

# RSpec.describe 'Person' do
#   let(:person) { double }
#   before(:example) do
#   end
#   describe 'regular double' do
#     it 'will return Hello' do
#       expect(person).to receive(:a).and_return('Hello')
#       person.a
#     end
#   end
# end
