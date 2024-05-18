dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 
def substrings(string,source)
word_occurence = []
string = string.downcase
source = source.map {|str| str.downcase}
common_substring =  source.select {|item| string.include?(item) }
split_string = string.split

common_substring.each do |item|
    count = split_string.count {|str| str.include?(item)}
    word_occurence.push(count)
end
multiDimensional_arr = common_substring.zip(word_occurence)
my_hash = Hash[multiDimensional_arr]
return my_hash

end


repeated_words = substrings("going to sit there",dictionary)
puts repeated_words