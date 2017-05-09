#Classes: Chance, Outcomeg
require "bigdecimal"
# Understands the likehood something occurs
class Probability
	attr_reader :chance
			
	def initialize(chance)
		@chance = BigDecimal.new(chance, 2)
#		@chance = chance
	end

	def ==(other)
		#equalprob(other)
		return false unless other.is_a?(self.class) # check for nil
		@chance == other.chance
	end

	def not
		self.class.new(1.0 - @chance)
	end

  # http://stattrek.com/probability/probability-rules.aspx
	# Rule of Multiplication
	def and(other)
#		Probability.new(@chance * other.chance)
		self.class.new(@chance * other.chance)
	end
	
	# Rule of Addition
	def or(other)
#		self.class.new(@chance + other.chance - (self.and(other)).chance)
#		self.not.and(other.not).not  # DeMorgan's law
		!(!self & !other)
	end

#	def !
#		self.not
#	end
#	def &(other)
#		self.and(other)
#	end
#	def |(other)
#		self.or(other)
#	end
	alias ! not
	alias & and
	alias | or

	# XOR 
	def xor(other)
	#	self.class.new(self.or(other).chance - self.and(other).chance)
	#	self.class.new((self | other).chance - (self & other).chance)
		(self & !other) | (!self & other)
	end
	
end
