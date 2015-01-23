# OC2. Money, money, money

# We were going back home yesterday. Second week, Monday, rain, new teacher... But just before getting into the subway, we found a bag full of
# money in different currencies! So we skipped TV shows for now (we’ll be back sometime, don’t worry!) because, don’t know why, we were
# suddenly interested in money.

# So we got to our local dealer, knowing that either way he will have a cut of the deal, but anyway we asked him about the current rates.
# And instead of using his services, we decided we wanted to get home, and write an awesome currency converter so we could know how much
# money was in the bag.

# Let’s do it now!

# You already have a little skeleton class with currency exchanges from and to €. Note that converting from/to € is direct, but if none
# of the from/to currencies is the € you have to do two conversions, using the € as a bridge.

# The only condition is: write ALL the tests first. Go full TDD on it. Yeah, all tests first. All of them. Yeah, every single one. Every.
# Single. One. Got it? One more time: every single one. And then, when everything is failing and so on... go implement it.

# Feel free to add support for your country currency! :)

class TheBanker
  TO_EURO = {
    usd: 0.77818,
    gbp: 1.27341,
    cad: 0.70518,
    aud: 0.69052
  }

  FROM_EURO = {
    usd: 1.28356,
    gbp: 0.78478,
    cad: 1.41613,
    aud: 1.44651
  }

  def self.convert(amount, from_currency, to_currency)
  end
end






class TheBanker
  TO_EURO = { usd: 0.77818, gbp: 1.27341, cad: 0.70518, aud: 0.69052 }
  FROM_EURO = { usd: 1.28356, gbp: 0.78478, cad: 1.41613, aud: 1.44651 }

  def self.convert(amount, from_currency, to_currency)
    return nil unless amount.is_a?(Numeric)
    return nil unless from_currency.is_a?(Symbol)
    return nil unless to_currency.is_a?(Symbol)
    
    if to_currency == :euro
      return amount * TO_EURO[from_currency]
    elsif from_currency == :euro
      return amount * FROM_EURO[to_currency]
    else
      amount_aux = self.convert(amount,from_currency,:euro)
      self.convert(amount_aux,:euro,to_currency)
    end
  end
end

describe "TheBanker" do 
  before do
    @bank = TheBanker
  end
  describe "convert" do
    it "should convert currency to euro" do
      expect(@bank.convert(10,:usd,:euro)).to eq(7.7818) 
    end
    it "should convert euro to another currency" do
      expect(@bank.convert(7.7818,:euro,:gbp)).to eq(6.107001004)
    end
    it "should convert a currency to another currency" do
      expect(@bank.convert(10,:usd,:gbp)).to eq(6.107001004)
    end 
  end
end