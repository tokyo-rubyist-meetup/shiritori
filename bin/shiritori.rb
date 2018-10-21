#!/usr/bin/env ruby

$:.unshift File.expand_path("../lib", __dir__)
require "shiritori"

japanese_nouns_as_katakana = Shiritori.japanese_nouns.map {|string| Shiritori.to_katakana(string) }

puts "I'll let you start. What's your first word?"
loop do
  word = Shiritori.to_katakana(gets.chomp)
  if japanese_nouns_as_katakana.include?(word)
    puts Shiritori.japanese_nouns.sample
  else
    puts "That doesn't count! You lose."
    exit
  end
end
