require "minitest/autorun"
require_relative "measurements"

class TestMeasurements < Minitest::Test
	
#	def setup
#		assert_equal 		
#	end

	def test_tablespoon_class
		assert_equal 1, Tablespoons.new.to_tablespoons(3)
		assert_equal 3, Tablespoons.new.to_teaspoons(1)	
	end

	def convert_gallons_to_teaspoons
		assert_equal 1, Gallons.new.to_quart(1) # 4
	end
	_
end


