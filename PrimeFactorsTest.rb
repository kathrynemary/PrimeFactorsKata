#test that there is a class named Prime Factors
#test that there is one method of generate
    #that method takes an int argument
    #that it returns a list
    #that list contains the prime factors of the int, in order

require 'minitest/autorun'
require './PrimeFactors'

class TestPrimeFactors < Minitest::Test

	def test_generates_correctly_for_1
		x = PrimeFactors.new
    	x = x.generate(1)
        assert_equal [], x
	end

	def test_generates_correctly_for_2
		x = PrimeFactors.new
    	x = x.generate(2)
        assert_equal [2], x
	end

	def test_generates_correctly_for_3
		x = PrimeFactors.new
    	x = x.generate(3)
        assert_equal [3], x
	end

	def test_generates_correctly_for_4
		x = PrimeFactors.new
    	x = x.generate(4)
        assert_equal [2,2], x
	end

	def test_generates_correctly_for_6
		x = PrimeFactors.new
    	x = x.generate(6)
        assert_equal [2,3], x
	end

	def test_generates_correctly_for_8
		x = PrimeFactors.new
    	x = x.generate(8)
        assert_equal [2,2,2], x
	end

	def test_generates_correctly_for_9
		x = PrimeFactors.new
    	x = x.generate(9)
        assert_equal [3,3], x
	end

	def test_generates_correctly_for_15
		x = PrimeFactors.new
    	x = x.generate(15)
        assert_equal [3,5], x
	end

	def test_generates_correctly_for_30
		x = PrimeFactors.new
    	x = x.generate(30)
        assert_equal [2,3,5], x
	end

end