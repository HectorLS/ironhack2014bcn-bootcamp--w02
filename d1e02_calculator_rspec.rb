class Calculator
  def add (a, b)
  	a+b
  end
  def substract(a,b)
  	a-b
  end
  def multiply(a,b)
  	a*b
  end
  def divide(a,b)
  	a/b
  end
end

### main

def assert(expected, actual, msg="")
  if expected != actual
    if msg == ""
      msg = "Error. Expected #{expected}, encountered #{actual}"
    end
    puts msg
  else
    puts "Ok"
  end
end



describe Calculator do
  before do
    @calculator = Calculator.new
  end


  describe "#multiply" do 
    it "should multiply 6 and 2, result: 12" do
      addition = @calculator.multiply(6,2)
      expect(addition).to eq(12)
    end
  end
end