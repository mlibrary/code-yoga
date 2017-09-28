require 'inspector'
RSpec.describe Inspector do
  describe "#sum" do
    it "sums [] as 0" do
      expect(subject.sum([])).to eq 0
    end

    it "sums [1] as 1" do
      expect(subject.sum([1])).to eq 1
    end

    it "sums [0,0,0] as 0" do
      expect(subject.sum([0,0,0])).to eq 0
    end

    it "sums [3,1,2,8,4] as 18" do
      expect(subject.sum([3,1,2,8,4])).to eq 18
    end
  end

  describe "#max" do
    it "gives max of 0 for empty list" do
      expect(subject.max([])).to eq 0
    end

    it "gives max of 1 for [0,1,0]" do
      expect(subject.max([0,1,0])).to eq 1
    end

    it "gives max of 2 for [2,2,2]" do
      expect(subject.max([2,2,2])).to eq 2
    end

    it "gives max of 9 for [9,0,0,0,0,0,0]" do
      expect(subject.max([9,0,0,0,0,0,0])).to eq 9
    end
  end

  describe "#square" do
    it "squares [] as []" do
      expect(subject.square([])).to eq []
    end

    it "squares [1] as [1]" do
      expect(subject.square([1])).to eq [1]
    end

    it "squares [1,2] as [1,2]" do
      expect(subject.square([1,2])).to eq [1,4]
    end

    it "squares [3,0,1,7,2] as [9,0,1,49,4]" do
      expect(subject.square([3,0,1,7,2])).to eq [9,0,1,49,4]
    end
  end

  describe "#reverse" do
    it "reverses [] as []" do
      expect(subject.reverse([])).to eq []
    end

    it "reverses [1] as [1]" do
      expect(subject.reverse([1])).to eq [1]
    end

    it "reverses [1,1] as [1,1]" do
      expect(subject.reverse([1,1])).to eq [1,1]
    end

    it "reverses [1,2,3,4,5] as [5,4,3,2,1]" do
      expect(subject.reverse([1,2,3,4,5])).to eq [5,4,3,2,1]
    end

    it "reverses [1,3,4,2,5] as [5,2,4,3,1]" do
      expect(subject.reverse([1,3,4,2,5])).to eq [5,2,4,3,1]
    end
  end

  describe "#sort" do
    it "sorts [] as []" do
      expect(subject.sort([])).to eq []
    end

    it "sorts [1] as [1]" do
      expect(subject.sort([1])).to eq [1]
    end

    it "sorts [1,2,3] as [1,2,3]" do
      expect(subject.sort([1,2,3])).to eq [1,2,3]
    end

    it "sorts [1,3,2] as [3,2,1]" do
      expect(subject.sort([1,3,2])).to eq [1,2,3]
    end

    it "sorts [5,1,8,4,1,3,1] as [1,1,1,3,4,5,8]" do
      expect(subject.sort([5,1,8,4,1,3,1])).to eq [1,1,1,3,4,5,8]
    end
  end
end

