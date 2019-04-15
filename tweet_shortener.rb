# Write your code here.
def dictionary
  dictionary = {
    'hello' =>'hi',
    'to'=>'2',
    'two'=>'2',
    'too'=> '2',
    'for'=> '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&",
  }
end

def word_substituter(tweets)
final = []
dict = dictionary.keys
tweets.split(" ").each {|word|
  if dict.include?(word.downcase)
    final << dictionary[word.downcase]
  else
    final << word
  end
}
  final.join(" ")
end

def bulk_tweet_shortener(tweets_arr)
  
  tweets_arr.collect {|tweet|
    puts word_substituter(tweet)
  }
end

def selective_tweet_shortener(tweets)
  tweets.length > 140 ? word_substituter(tweets) : tweets
end

def shortened_tweet_truncator(tweets)
  word_substituter(tweets).length>140 ? tweets[0...137] + "..." : tweets.length > 140 ? word_substituter(tweets) : tweets
  
end