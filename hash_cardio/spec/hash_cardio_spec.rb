require 'rspec'
require '../hash_cardio.rb'

context 'Hash Cardio' do
  describe '#to_array' do
    it 'transforms a hash into an array' do
      a_hash = {a: "b", c: "d", e: "f"}
      result = to_array(a_hash)
      expect(result).to eq [[:a, "b"], [:c, "d"], [:e, "f"]]
    end
  end

  describe '#reverse' do
    it 'keys become values, values become keys' do
      a_hash = {a: "b", c: "d", e: "f"}
      result = reverse(a_hash)
      expect(result).to eq({ "b" => :a, "d" => :c, "f" => :e })
    end
  end

  describe '#no_nil_values' do
    it 'eliminate nil pairs from the hash' do
      a_hash = {a: "b", c: nil, e: nil}
      result = no_nil_values(a_hash)
      expect(result).to eq({ a: "b"})
    end
  end


  describe '#subset?' do
    it 'return true if a hash is a subset of another_hash' do
      a_hash = { banana: 33 }
      another_hash = { banana: 33, pear: nil}
      result = subset?(a_hash, another_hash)
      expect(result).to eq true
    end
  end

  describe '#stringify' do
    it 'transform the keys and the values into strings' do
      a_hash = { banana: 33 }
      result = stringify(a_hash)
      expect(result).to eq({"banana" => "33"})
    end
  end

  describe '#simple_word_counter' do
    it 'counts the words of simple sentences, no special characters need to be considered' do
      a_sentence = "The Ruby Programming Language"
      result = simple_word_counter(a_sentence)
      count =  { "The" => 1, "Ruby" => 1, "Programming" => 1, "Language" => 1 }
        expect(result).to eq count
    end
  end

  describe '#find_with_warning' do
    it 'return the value if you find it, puts "not found" if the value was not found' do
      found = find_with_warning({ banana: 33}, :banana)
      expect(found).to eq(33)
      not_found = find_with_warning({ banana: 33}, :wololo)
      expect(not_found).to eq 'not found'
    end
  end

  describe '#destroy' do
    it 'destroy all pairs which values are included in an_array' do
      result = destroy({ banana: 33, pear: 12}, [12])
      expect(result).to eq({ banana: 33 })
    end
  end
end
