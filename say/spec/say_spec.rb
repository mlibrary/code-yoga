require_relative "../lib/say"

describe "say" do
  it { expect(say(0)).to eq("zero") }
  it { expect(say(1)).to eq("one") }
  it { expect(say(2)).to eq("two") }
  it { expect(say(3)).to eq("three") }
  it { expect(say(4)).to eq("four") }
  it { expect(say(5)).to eq("five") }
  it { expect(say(6)).to eq("six") }
  it { expect(say(7)).to eq("seven") }
  it { expect(say(8)).to eq("eight") }
  it { expect(say(9)).to eq("nine") }
  it { expect(say(10)).to eq("ten") }
  it { expect(say(11)).to eq("eleven") }
  it { expect(say(12)).to eq("twelve") }
  it { expect(say(13)).to eq("thirteen") }
  it { expect(say(14)).to eq("fourteen") }
  it { expect(say(15)).to eq("fifteen") }
  it { expect(say(16)).to eq("sixteen") }
  it { expect(say(17)).to eq("seventeen") }
  it { expect(say(18)).to eq("eighteen") }
  it { expect(say(19)).to eq("nineteen") }
  it { expect(say(20)).to eq("twenty") }
end
