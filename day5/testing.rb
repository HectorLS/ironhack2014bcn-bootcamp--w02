#encoding: utf-8
require_relative 'big_one.rb'


describe Student do
	before do
		@student = Student.new
		@student.name = 'Remi'
		@student.surnames = 'Varnagiris'
		@student.birthday = Date.new(1933,12,25)
		@student.number_of_dogs = 5
		@student.website = 'http://ironhack.com'
	end


	  it "should be valid with correct data" do
	    expect(@student.valid?).to be_truthy
	  end

	describe :name do
		it "should be invalid if it' missing" do
			@student.name = nil
			expect(@student.valid?).to be_falsy
		end
	end


	describe :surname do
		it "should be invalid if it' missing" do
			@student.surnames = nil
			expect(@student.valid?).to be_falsy
		end
	end

	describe :proper_age do
		it "Too young" do
			@student.birthday = Date.new(1933,12,25)
			expect(@student.valid?).to be_truthy
		end
	end
end