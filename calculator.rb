require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end


# driver code
# calculator = Calculator.new

# p "test the add method:"

# if calculator.add(1, 3) == 4
#   p "the test passed"
# else
#   p "the test failed"
# end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
    it 'should return the sum of two negative numbers' do
      calculator = Calculator.new
      result = calculator.add(-1, -3)
      expect(result).to eq(-4)
    end
  end

  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(4, 2)
      expect(result).to eq(2)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(4, 2)
      expect(result).to eq(8)
    end
    it 'should return the product of a positive and a negative number' do
      calculator = Calculator.new
      result = calculator.multiply(6, -3)
      expect(result).to eq(-18)
    end
  end

  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(12, 6)
      expect(result).to eq(2)
    end
  end

  describe '#square' do
    it 'should return the square of a number' do
      calculator = Calculator.new
      result = calculator.square(4)
      expect(result).to eq(16)
    end
  end

  describe '#power' do
    it 'should return the power of two numbers' do
      calculator = Calculator.new
      result = calculator.power(2, 3)
      expect(result).to eq(8)
    end
  end
end




