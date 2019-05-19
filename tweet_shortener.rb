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
  shorter_tweet = []
  tweet = tweet.split(" ")
  tweet.each do |word|
    if shorten_words.keys.include?(word)
      shorter_tweet << shorten_words[word]
    else
      shorter_tweet << word
    end
  end
  shorter_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  shorten_tweet = word_substituter(tweets)
  tweets.each do |tweet|
    puts shorten_tweet
end