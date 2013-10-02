require 'rspec'
require 'finder'


describe "ArrayAdder" do
  include ArrayAdder
  context "n^2 time" do

    describe "#nested_loop_attitive_find" do
      it "returns true if two numbers in the array sum to the target" do
        nested_loop_attitive_find([1,2,3,4,5,6], 10).should eq true

      end

      it "returns false if no two numbers in the array sum to the target" do
        nested_loop_attitive_find([1,2,3,4], 10).should eq false
      end
    end

  end


  context "2n time" do

    describe "#slow_hash_additive_find" do
      it "returns true if two numbers in the array sum to the target" do
        slow_hash_additive_find([1,2,3,4,5,6], 10).should eq true

      end

      it "returns false if no two numbers in the array sum to the target" do
        slow_hash_additive_find([1,2,3,4], 10).should eq false
      end
    end


    describe "#fast_hash_additive_find" do
      it "returns true if two numbers in the array sum to the target" do
        fast_hash_additive_find([1,2,3,4,5,6], 10).should eq true

      end

      it "returns false if no two numbers in the array sum to the target" do
        fast_hash_additive_find([1,2,3,4], 10).should eq false
      end
    end

  end
end