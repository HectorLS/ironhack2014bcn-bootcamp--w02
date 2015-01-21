require 'rspec'

class Cell
	def neighbours_count
		neighbours = []
	end
end


describe game_of_life do
	it "Rule #1: Any live cell with fewer than two live neighbours dies, as if caused by under-population." do
		cell = Cell.new
		cell.neighbours.count.should == 0 
	end
end