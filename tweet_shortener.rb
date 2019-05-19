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
    "and" => "&",
    "For" => "4"
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

def bulk_tweet_shortener(tweet)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end
  
def shortened_tweet_truncator(tweet)
  selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = tweet[0..136] << "..."
  else
    tweet
  end
end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  