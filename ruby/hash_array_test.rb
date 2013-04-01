require './hash_array.rb'
require 'test/unit'

class HashArrayTest < Test::Unit::TestCase

  def test_hash_array_nil
    assert_raise(ArgumentError) {hash_array( nil ) }
  end

  def test_hash_array_empty
    assert_equal( [], hash_array( {}))
  end

  def test_hash_array_twos
    assert_equal( [1,2], hash_array( {1 => 2}))
  end

  def test_hash_array_more
    expected = [:one, "two", :three, "four"]
    actual = hash_array( :one => "two",                                                                :three => "four")
    assert_block do
      expected.all? { |e| (actual.member?(e)) }
    end
  end
end

class HashArrayValuesTest < Test::Unit::TestCase
  def test_hash_array_values_nil
    assert_raise(ArgumentError) {hash_array_values(nil)}
  end

    def test_hash_array_values_empty
      assert_equal([], hash_array_values( {} ))
  end

  def test_hash_array_values_twos
    assert_equal( [2], hash_array_values( {1 => 2}))
  end

  def test_hash_array_values_more
    expected = ["two", "four"]
    actual = hash_array_values( :one => "two",                                                                :three => "four")
    assert_block do
      expected.all? { |e| (actual.member?(e)) }
    end
  end

end

class ArrayHashTest < Test::Unit::TestCase
  def test_array_hash_nil
    assert_raise(ArgumentError) {array_hash(nil)}
  end

  def test_array_hash_empty
    assert_equal( {}, array_hash([]))
  end

  def test_array_hash_odd
    assert_raise(ArgumentError) {array_hash([1])}
  end

  def test_array_hash_twos
    assert_equal( {1 => 2}, array_hash([1,2]))
  end

  def test_array_hash_more
    assert_equal( {1 => 2, 3 => 4}, array_hash([1,2,3,4]))
  end

  def test_array_hash_symbols
    assert_equal( {:one => "two", :three => "four"},
                  array_hash([:one, "two", :three, "four"]))
  end

end
