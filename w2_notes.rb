# Testing types

# 	-Unit
# 	-Integration
# 	-Acceptamce
# 	-...and more


# ==============================================
# ==============================================

# 	$UNDERSCORE


# 	if we have this array with 3 values

	@array = ["Pepe", 21, "blabla@gmail.com", "@twitter"]

	# and the program use a method where we only need two for example said 
	#the name and the twitter account, we can do something like this:

	def calling_user_and_twitter_only(name,twitter)

	@array.select {|name,_,_,twitter|} #...whatever

	end

# 	The underscore means: OK here should be something, but we don't need this value right now.

# ==============================================
# ==============================================


# $UPCASE 

# If you create a Hash or Array named in UPCASE you are declaring that the Hash created is a constant
# the values inside never change.

ARRAY = [1,2,3,67]

