require "minitest/autorun"
require_relative "probability"

# Ensures Probability Class functions correctly 
class TestProbability < Minitest::Test
#	def test_chance_reader
#		assert_equal 20, Probability.new(20).chance
#	end
# and, or, xor, xand, 
	
	def setup
		@chance_000 = Probability.new(0)
		@chance_100 = Probability.new(1)
		@chance_070 = Probability.new(0.7)
		@chance_050 = Probability.new(0.5)
		@chance_040 = Probability.new(0.4)
		@chance_030 = Probability.new(0.3)
		@chance_020 = Probability.new(0.2)
	end

	# Test that probability is valid (between 0 and 1)

	def test_equality
		assert @chance_070 == @chance_070
		refute @chance_020 == nil
		assert @chance_050.hash == @chance_050.hash
		refute @chance_050 == @chance_030
	end

	def test_not
		assert @chance_030 == @chance_070.not
	end

	def test_and
		assert_equal 0.04, @chance_020.and(@chance_020).chance
		assert_equal 0.4, @chance_100.and(@chance_040).chance
		assert_equal 0.4, @chance_040.and(@chance_100).chance
		
	end

	def test_or
		assert_equal 0.44, @chance_020.or(@chance_030).chance
		assert_equal 1, @chance_100.or(@chance_000).chance
		assert_equal 1, @chance_000.or(@chance_100).chance
	end

	def test_xor
		assert_equal 0.3464, @chance_020.xor(@chance_030).chance
		assert_equal 0, @chance_100.xor(@chance_100).chance
	end
end
