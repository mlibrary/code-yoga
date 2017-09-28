class Anagram
  attr_reader :words, :list, :longest_word, :most_words

  def initialize
    @words = {}
    @longest_word = ""
    @most_words = []
    @list = IO.readlines("./wordlist.txt")

    @list.each do |word|
      word.chomp!
      key = word.split(//).sort.join("")
      unless @words.has_key? key
        @words[key] = []
      end

      @words[key] << word
    end
  end

  def make_key(word)
    word.split(//).sort.join("")
  end


  def find
    @list.each do |word|
      word.chomp!

      results = @words[make_key(word)]
      @most_words = results unless results.length <= @most_words.length
      results = results.select{|w| w != word }

      unless results.empty?
        p "#{word} #{results.join(" ")}"
        @longest_word = word unless word.length <= @longest_word.length
        @most_w
      end
    end

    p "longest: #{longest_word} #{@words[make_key(longest_word)].join(" ")}"
    p "most: #{@most_words.join(" ")}"
  end
end

Anagram.new.find
