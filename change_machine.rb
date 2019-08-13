require 'rspec'

class ChangeMachine
  def change(cents)
    coins = []
    while cents >= 25
      coins << 25
      cents -= 25
    end

    while cents >= 10
      coins << 10
      cents -= 10
    end

    while cents >= 5
      coins << 5
      cents -= 5
    end

    while cents > 0
      coins << 1
      cents -= 1
    end
    return coins
  end
end

RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end
    it 'should return [1,1] when given 2' do
      machine = ChangeMachine.new
      expect(machine.change(2)).to eq([1, 1])
    end
    it 'should return [5,1] when given 6' do
      machine = ChangeMachine.new
      expect(machine.change(6)).to eq([5, 1])
    end
    it 'should return [10] when given 10' do
      machine = ChangeMachine.new
      expect(machine.change(10)).to eq([10])
    end
    it 'should return [10,5,1] when given 16' do
      machine = ChangeMachine.new
      expect(machine.change(16)).to eq([10, 5, 1])
    end
    it 'should return [25,10,5,1] when given 41' do
      machine = ChangeMachine.new
      expect(machine.change(41)).to eq([25,10, 5, 1])
    end
  end
end
