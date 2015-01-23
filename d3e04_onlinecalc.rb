#encoding: utf-8
require 'sinatra'
require 'sinatra/reloader'

set :port, 3000
set :bind, '0.0.0.0'

# SL10. The online calculator

# So, our Online Calculator will:
# * Have a home page (‘/‘) where you see all four available operations: add, substract, multiply and divide. Pretty simple stuff.
# * For each one of the available operations, we will have a form with two input fields and a button, which will go to another URL/route and display the result, like “The multiplication of 4 and 15 is 60” or “The addition of 10 and 39 is 49".
# * There will also be a link, in the home page, that goes to ‘/counting’ and should display the numbers from 1 to 200, one number per line.

# Feel free to add more features! :D

# class Calculator

# 	def add(a,b)
# 		a+b
# 	end

# 	def substract(a,b)
# 		a-b
# 	end
# 	def multiply(a,b)
# 		a*b
# 	end

# 	def divide(a,b)
# 		a/b
# 	end
# end

# calculator = Calculator.new
finalvalue = 0


get '/' do
	@finalvalue = finalvalue
	erb :calculator
end



post '/add' do
	@finalvalue = params[:a].to_i + params[:b].to_i
	#@finalvalue = calculator.add(params[:a].to_i,params[:b].to_i)
	erb :calculator
end

post '/substract' do
	@finalvalue = params[:a].to_i - params[:b].to_i
	erb :calculator
end
post '/multiply' do
	@finalvalue = params[:a].to_i * params[:b].to_i
	erb :calculator
end
post '/divide' do
	@finalvalue = params[:a].to_i / params[:b].to_i
	erb :calculator
end
