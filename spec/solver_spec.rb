require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe '#new' do
    it 'returns a solver object' do
      expect(@solver).to be_an_instance_of Solver
    end
  end

  describe '#factorial' do
    it 'returns the factorial of 0' do
      expect(@solver.factorial(0)).to eql 1
    end

    it 'returns the factorial of 5' do
      expect(@solver.factorial(5)).to eql 120
    end

    it 'raises an exception for negative integer' do
      expect { @solver.factorial(-5) }.to raise_exception an_instance_of(StandrdError)
    end
  end

  describe '#reverse' do
    it 'returns the reverse of hello' do
      expect(@solver.reverse('ruby')).to eql 'ybur'
    end
  end

  describe '#fizzbuzz' do
    it 'returns fizz, when N is divisible by 3' do
      expect(@solver.fizzbuzz(9)).to eql 'fizz'
    end

    it 'returns buzz when N is divisible by 5' do
      expect(@solver.fizzbuzz(25)).to eql 'buzz'
    end

    it 'returns N when N is not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(11)).to eql '11'
    end

    it 'returns fizzbuzz when N is divisible by 3 and 5' do
      expect(@solver.fizzbuzz(30)).to eql 'fizzbuzz'
    end
  end
end

