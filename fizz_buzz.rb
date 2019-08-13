class FizzBuzz
  def output(number)
    if number % 3 == 0 && number % 5 == 0
      return 'fizz_buzz'
    elsif number % 5 == 0
      return 'buzz'
    elsif number % 3 == 0
      return 'fizz'
    end
    return number
  end
end

RSpec.describe FizzBuzz do
  describe '#output' do
    it 'should return 1 when given 1' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(1)
      expect(result).to eq(1)
    end
    it 'should return 2 when given 2' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(2)
      expect(result).to eq(2)
    end
    it 'should return \'fizz\' when given 3' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(3)
      expect(result).to eq('fizz')
    end
    it 'should return 4 when given 4' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(4)
      expect(result).to eq(4)
    end
    it 'should return \'buzz\' when given 5' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(5)
      expect(result).to eq('buzz')
    end
    it 'should return \'fizz\' when given 6' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(6)
      expect(result).to eq('fizz')
    end
    it 'should return \'buzz\' when given 10' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(10)
      expect(result).to eq('buzz')
    end
    it 'should return \'fizz_buzz\' when given 15' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(15)
      expect(result).to eq('fizz_buzz')
    end
  end
end
