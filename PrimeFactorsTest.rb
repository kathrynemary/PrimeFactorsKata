require 'minitest/autorun'
require './PrimeFactors'

class TestPrimeFactors < Minitest::Test

	def setup
		@first_try = PrimeFactors.new(25)
		@f = @first_try.factor
		@second_try = PrimeFactors.new(300)
		@g = @second_try.factor
		@third_try = PrimeFactors.new(0)
	end

	def test_factor_returns_an_array
		assert_kind_of Array, @f
		assert_kind_of Array, @g
    end

	def test_factoring_returns_something
		refute_empty @f
		refute_empty @g
	end

	def test_factoring_returns_a_real_thing
		assert_includes @f, 5
		assert_includes @g, 2
		assert_includes @g, 3
		assert_includes @g, 5
	end

	def test_factoring_doesnt_return_wrong_thing
		refute_includes @f, 50
		refute_includes @g, 4
	end

	def test_doesnt_make_things_up
		assert_raises (ZeroDivisionError) {@third_try.factor}
	end

end
