class Quantity
	def initialize(amount, unit)
		@amount = amount
		@unit = unit
	end
end
	

class Unit
	def initialize(ratio, baseunit)
		@ratio = ratio
		@baseunit = baseunit
	end
	TEASPOON = Unit.new 1
	TABLESPOON = Unit.new 3, TEASPOON
	OUNCE = Unit.new 2, TABLESPOON
	CUP = Unit.new 8, OUNCE
	PINT = Unit.new 2, CUP
	QUART = Unit.new 2, PINT
	GALLON = Unit.new 4, QUART
end



