# Write your code here.
def dictionary
  shorten_words_hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  shorten_words = dictionary
  tweet = tweet.split(" ")
  shorten_words.each do |long, short|
    tweet.each do |word|
      if tweet.include?(long)
        word = short
      end
    end
  end
  tweet
end