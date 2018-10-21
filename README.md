# Shiritori

Your goal is to implement command line program to play the game of Shiritori against an "AI" player.

## About Shiritori

*From Wikipedia's [Shiritori entry](https://en.wikipedia.org/wiki/Shiritori).*

Shiritori (しりとり) is a Japanese word game in which the players are required to say a word which begins with the final kana of the previous word.

### Basic rules

* Two or more people take turns to play.
* Only nouns are permitted.
* A player who plays a word ending in the mora N (ん) loses the game, as no Japanese word begins with that character.
* Words may not be repeated.
* Phrases connected by no (の) are permitted, but only in those cases where the phrase is sufficiently fossilized to be considered a "word".[2]

Example: sakura (さくら) → rajio (ラジオ) → onigiri (おにぎり) → risu (りす) → sumou (すもう) → udon (うどん)

The player who used the word udon lost this game.

## Reference Implementation

The file `./bin/shiritori.rb` contains the basics of an implementation to get you started. It provides you an example of reading a word in katakana or hiragana from the console, checking that word against a list of common Japanese nouns, and outputting a random reply. However, it doesn't actually implement the game rules.

## Testing

You may want to use automated testing when developing your implementation. There's an example of how you can do this in `test/shiritori_test.rb` (run with `ruby test/shiritori_test.rb`). This test assumes you have [minitest](http://docs.seattlerb.org/minitest/) installed. Install it with

```
gem install minitest
```

or

```
gem install bundler
bundle install
```

## Sample Word List

`data/word_data.txt` contains a list of Japanese nouns. This list was generated via `bin/generate_wordlist.rb` and uses data from [jmdict-simplified](https://github.com/scriptin/jmdict-simplified).
