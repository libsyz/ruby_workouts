
# WARMUP 🏃
# You can find all these as core documentation methods

def to_array(a_hash)
  # transforms a hash into an array
  # to_array({ banana: "yummy fruit"})
  # => [[:banana, "yummy fruit"]]
  a_hash.to_a
end

def reverse(a_hash)
  # keys become values, values become keys
  # reverse({ banana: "yummy fruit"})
  # => {"yummy fruit" => :banana}
  a_hash.invert
end

def no_nil_values(a_hash)
  # delete all nil pairs with nil values from a_hash
  # no_nil_values({ banana: 33, pear: nil})
  # => {"banana" => 33}
  a_hash.compact
end

def subset?(a_hash, another_hash)
  # return true if a hash is a subset of another_hash
  # otherwise return false
  # subset?({ banana: 33 }, { banana: 33, pear: nil})
  # => true
  a_hash < another_hash
end



# WORKOUT 🏋

def stringify(a_hash)
  # transform the keys and the values
  # into strings
  # stringify({ banana: 33})
  # => { "banana" => "33"}
  a_hash.transform_keys { |k| k.to_s}.transform_values {|v| v.to_s }
end

def simple_word_counter(a_string)
  a_string.split.each_with_object({}) do |el, obj|
    obj[el].nil? ? obj[el] = 1 : obj[el] += 1
  end
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
  a_hash.fetch(a_key) { "not found" }
end

def destroy(a_hash, an_array)
  a_hash.keep_if do |k, v|
    !an_array.include?(v)
  end
  # destroy all pairs which values are included in an_array
  # destroy({ banana: 33, pear: 12}, [12])
  # { "banana" => "33"}
end











