require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:dessert) { Dessert.new("brownie", 50, chef) }


  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("brownie")
    end
  end

    it "sets a quantity" do
      expect(dessert.quantity).to eq (50)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

       
    it "raises an argument error when given a non-integer quantity" do
    expect { Dessert.new("brownie","cool",chef)}.to raise_error(ArgumentError)
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
    expect(dessert.ingredients).to_not include("flour")
    dessert.add_ingredient("flour")
    expect(dessert.ingredients).to include("flour")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(10)
      expect(dessert.quantity).to eq(40)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { dessert.eat(100) }.to raise_error("not enough left!")
    end
  end
  
  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(dessert.serve).to include (chef.titleize)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(bake).with(dessert)
    end
  end
end
