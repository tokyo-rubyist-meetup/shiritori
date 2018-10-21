require "minitest/autorun"

$:.unshift File.expand_path("../lib", __dir__)
require "shiritori"

class ShiritoriTest < Minitest::Test
  def test_to_katakana
    assert_equal("カタカナ", Shiritori.to_katakana('かたかな'))
  end
end
