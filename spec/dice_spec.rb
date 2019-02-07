require 'dice.rb'

describe Dice do
  before(:each) do
    @dice = Dice.new
  end
  it "Responds to role" do
    expect(@dice).to respond_to(:roll)
  end

  it "Returns a number between 1 and 6 when rolled" do
    expect(@dice.roll).to be_between(1, 6).inclusive
  end

  it "Returns a random number" do
    rolls = []
    10.times {rolls << @dice.roll}
    expect(rolls.uniq.count).to be > 2
  end
end
