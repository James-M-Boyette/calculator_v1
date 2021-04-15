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

  def percent(number)
    return number * 0.01
  end

  def negate(number)
    return number * -1
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
    it "should produce the power of one number on another" do
      calculator = Calculator.new
      result = calculator.power(5, 2)
      expect(result).to eq(25)
    end
    # percent
    it "should convert an whole number to a percentage" do
      calculator = Calculator.new
      result = calculator.percent(8)
      expect(result).to eq(0.08)
    end
    # negative
    it "should convert a number to its opposite sign" do
      calculator = Calculator.new
      result = calculator.negate(1)
      expect(result).to eq(-1)
    end
    # negative
    it "should convert an whole number to a percentage" do
      calculator = Calculator.new
      result = calculator.negate(1)
      expect(result).to eq(-1)
    end
  end
end
