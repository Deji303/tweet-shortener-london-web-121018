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
      if x == y
        string_array
      end 
    end
  end 
  
end