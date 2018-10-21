#!/usr/bin/env ruby

require "json"

json_file = File.expand_path('../tmp/jmdict_eng_common.json', __dir__)
word_data = JSON.parse(File.read(json_file))["words"]
common_words = []
word_data.each do |word|
  if word["sense"].any? {|sense| sense["partOfSpeech"].include?("n") }
    common_words += word["kana"].find_all {|h| h["common"]}.map {|h| h["text"]}
  end
end

word_data_file = File.expand_path('../data/word_data.txt', __dir__)
File.open(word_data_file, "w") do |f|
  f.puts(common_words)
end
