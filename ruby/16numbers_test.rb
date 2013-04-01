#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require 'test/unit'
require './16numbers.rb'

class SliceTest < Test::Unit::TestCase
  @@a = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
  @@expected = [ [1,2,3,4], [5,6,7,8], [9,10,11,12], [13,14,15,16]]
  @@a_duplicate_last = [1,2,3,1,2,1]
  @@expected_duplicate_last_identity = [ [1], [2,3,1], [2,1], ]
  @@expected_duplicate_last = [ [1,2,3,1], [2,1], ]

  def test_using_each
    assert_equal( @@expected, using_each(@@a))
  end

  def test_using_each_duplicate_last
    assert_equal( @@expected_duplicate_last_identity, using_each(@@a_duplicate_last))
  end

  def test_using_each_slice
    assert_equal( @@expected, using_each_slice(@@a))
  end

  def test_using_each_slice_duplicate_last
    assert_equal( @@expected_duplicate_last, using_each_slice(@@a_duplicate_last))
  end

end
