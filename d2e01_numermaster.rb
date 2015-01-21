#encoding: utf-8
require 'awesome_print'

# SL4. Crazy numbers

# We will rest from TV shows for a while. I mean, I love them, but even sometimes it's nice to just stop and do something else.

# And what else is fun? Numbers! We are going to write a nice Numermaster class that treats with, well... yeah, numbers.

		# Its first method will take an array of numbers. If most of them are positive, it should return only the positive ones. If most of them are
		# negative, it should return the negative ones. Otherwise (if the amount of positives and negatives is the same) return nil.

# The second method takes a set of numbers. Then, it should return an array with four values:
# 1. The mode
# 2. The median
# 3. The mean
# 4. The size of the array
# In the event that the array we pass is empty, it should just return nil.

		# The third and final method will take a positive integer (let's call it "n") as a parameter, and return the n-th Fibonacci number. If the
		# parameter is zero or less, it should just return nil. More info: http://en.wikipedia.org/wiki/Fibonacci_number

# Your goal is to follow these three steps:
# 1. Quickly write a first implementation of the three methods.
# 2. Write a nice set of tests for each method.
# 3. Once the test pass, refactor your methods so they are perfect (so perfect that even Ruby creator would see them with joy and pride!)

class Numermaster
	def initialize
	end
end


class Actions
end



a = Hash.new(0)
[1, 56, 3, 56, 56, 4, 4, 4, 1, 7, 8].each { |num|
  a[num] += 1
}





# SL5. Conway's Game of Life

# We now discovered that the amount of money in the bag only pays for a coffee, half muffin and a couple of Smints. So we realized that we still
# have to be developers in order to pay rent. Isn’t that great? :)

# This got ourselves thinking about Life, in capitals. How we are just particles in the Universe, and how the shitty end of Lost is not THAT
# important (though, JJ Abrams, SERIOUSLY?).

# Anyway, while we are philosophing about Everything, we end up discovering about Conway’s Game of Life. More information is in here:
# http://en.wikipedia.org/wiki/Conway's_Game_of_Life

# We think this is a pretty cool game, so we want in, and decide to implement it. But not implement it cowboy-style: we know TDD! So we get
# prepared, roll up our sleeves (wait, no, it’s summer!) and implement this funny game, step by step, with TDD.

# Have fun!
