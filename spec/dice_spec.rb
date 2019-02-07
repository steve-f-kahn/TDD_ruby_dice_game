require 'dice.rb'

describe Dice do
  before(:each) do
    @dice = Dice.new
  end
  it "Responds to role" do
    expect(@dice).to respond_to(:roll)
  end

  it "Returns a number between 1 and 6 when rolled" do
    result = @dice.roll
    expect(result[0]).to be_between(1, 6).inclusive
  end

  it "Returns a random number" do
    rolls = []
    10.times {rolls << @dice.roll}
    expect(rolls.uniq.count).to be > 2
  end

  it "Returns 5 scores when I roll 5 die" do
    expect(@dice.roll(5).count).to eq(5)
  end

  it "Reutrns 15 scores when I roll 25 die" do
    expect(@dice.roll(15).count).to eq(15)
  end

  it "Responds to result" do
    expect(@dice).to respond_to(:result)
  end

  it "Outputs an integer between 1 and 6 when result and an index is called" do
    @dice.roll(10)

    expect(@dice.result[1]).to be_between(1,6).inclusive
  end

end
