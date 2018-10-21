require "nkf"

class Shiritori
  def self.to_katakana(string)
    NKF.nkf("-w -h2", string)
  end

  def self.japanese_nouns
    @japanese_nouns ||= begin
      word_data_file = File.expand_path('../data/word_data.txt', __dir__)
      File.readlines(word_data_file).map {|string| string.chomp! }
    end
  end
end
