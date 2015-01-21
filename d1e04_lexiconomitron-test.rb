#encoding: utf-8
require_relative 'd1e04_lexiconomitron.rb'

describe Lexiconomitron do
	before do
		words = "The target is get the truth"
		@lexi = Lexiconomitron.new(words)
	end


	describe "#Eat the TT" do
		it "Should return the strings without Tt's" do
			expect(@lexi.eat_the_tt).to eq(["he", "arge", "is", "ge", "he", "ruh"])
		end
	end


	describe "#Shazam" do
		it "Should reverse the strings and without Tt's!" do
			expect(@lexi.shazam).to eq(["eh", "egra", "si", "eg", "eh", "hur"])
		end
	end



	describe "#Oompa Lompa" do
		it "Should return a strings with the words with three characters or less and without Tt's" do
			expect(@lexi.oompa_lompa).to eq(["he", "is", "ge", "he"])
		end
	end



	describe "#All in" do
		it "Should return the strings without Tt's" do
			expect(@lexi.all_in).to eq("arge$ruh$is$ge$he$he")
		end
	end



	describe "#Supercounter" do
		it "Should return the number of the characters in the strings those are before T in the alphabet" do
			expect(@lexi.supercounter).to eq(15)
		end
	end
end

