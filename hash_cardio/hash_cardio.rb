
# WARMUP 🏃

def to_array(a_hash)
  # transforms a hash into an array
  # to_array({ banana: "yummy fruit"})
  # => [[:banana, "yummy fruit"]]
end

def reverse(a_hash)
  # keys become values, values become keys
  # reverse({ banana: "yummy fruit"})
  # => {"yummy fruit" => :banana}
end

def no_nil_values(a_hash)
  # delete all nil values from a_hash
  # no_nil_values({ banana: 33, pear: nil})
  # => {"banana" => 33}
end

def subset?(a_hash, another_hash)
  # return true if a hash is a subset of another_hash
  # otherwise return false
  # subset?({ banana: 33 }, { banana: 33, pear: nil})
  # => true
end



# WORKOUT 🏋

def stringify(a_hash)
  # transform the keys and the values
  # into strings
  # stringify({ banana: 33})
  # => { "banana" => "33"}
end

def word_counter(a_hash)
  # count the number of words in a string
  # all words separated by spaces
  # word_counter(The Ruby Programming Language")
  #  { "The" => 1,
  #    "Ruby" => 1,
  #    "Programming" => 1,
  #    "Language" => 1 }
end

def find_with_warning(a_hash, a_key)
  # try to find a value in a_hash
  # return the value if you find it,
  # puts "not found" if the value was not found
  # find_with_warning({ banana: 33}, :banana)
  # => 33
  # find_with_warning({ banana: 33}, :pear)
  # => "not found"
  # Look up the documentation, there's no need for an if statement!
end

def json_to_hash(a_string)
  # transform a json string into a ruby hash
  # Don't use the json library!
  # json_to_hash("{ banana: 33}"")
  # { "banana" => "33"}
end

def destroy(a_hash, an_array)
  # destroy all pairs which values are included in an_array
  # json_to_hash("{ banana: 33, pear: 12}", [12])
  # { "banana" => "33"}
end








