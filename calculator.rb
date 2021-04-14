require "rspec"

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

  def sqaure(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
  describe "#add" do
    it "should return the sum of two numbers" do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
    it "should return the difference of two numbers" do
      calculator = Calculator.new
      result = calculator.subtract(25, -20)
      expect(result).to eq(45)
    end
    it "should return the product of two numbers" do
      calculator = Calculator.new
      result = calculator.multiply(5, -5)
      expect(result).to eq(-25)
    end
    it "should return the quotient of two numbers" do
      calculator = Calculator.new
      result = calculator.divide(-30, -5)
      expect(result).to eq(6)
    end
    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
    # square
    it "should return the product of a number times itself" do
      calculator = Calculator.new
      result = calculator.sqaure(3)
      expect(result).to eq(9)
    end
    # power
    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.power(5, 2)
      expect(result).to eq(25)
    end
  end
end
