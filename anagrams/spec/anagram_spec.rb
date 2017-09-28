require 'anagram'

RSpec.describe Anagram do

  describe "#make_key" do
     before do
       allow(IO).to recieve(:readlines).and_return(true)
       allow(subject).to revieve(:list).and_return(true)
    end

    it "'get' is 'egt'" do
      expect(make_key("get")).to eq "egt"
    end
  end
end
