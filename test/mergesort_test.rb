require "test_helper"
require "mergesort"

describe "use merge sort algorithm to sort an array" do
  it "sorts array with negative numbers, repeated numbers and decimals" do
    array = [1.5,3,6,8,5,1,7,6,13,-1]
    MergeSort.new.sort(array).must_equal [-1,1,1.5,3,5,6,6,7,8,13]
  end
end
