# Write your code here.

def dictionary 
  {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@", 
    "and" => "&"
    
  }
end 

def word_substituter (string)
  string_array = string.split(" ")
  string_array.each do |x|
    dictionary.keys.each do |y|
      if x.downcase == y
        string_array[string_array.index(x)] = dictionary[y]
      end 
    end
  end 
  string_array.join(" ")
end


def bulk_tweet_shortener (tweet_array)
  tweet_array.each {|x| puts word_substituter(x)}
end 

def selective_tweet_shortener (string)
  new_string = string 
  if string.length > 140
    new_string = word_substituter(string)
  end 
  new_string
end 

def shortened_tweet_truncator (string)
  new_string = selective_tweet_shortener(string); 
  if selective_tweet_shortener(string) > 140
    new_string = "#{string[0..137]}..."
  end 
  new_string
end 
