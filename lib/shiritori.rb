require "nkf"

class Shiritori
  def self.to_katakana(string)
    NKF.nkf("-w -h2", string)
  end
end
