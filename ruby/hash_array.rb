#!/usr/bin/ruby

def hash_array(hash)
  hash.instance_of? Hash or raise ArgumentError.new("Must pass Hash")
  # Zip returns array of arrays
  a = hash.keys.zip(hash.values)
  ar = []
  a.each { |e| ar.concat(e)}
  ar
end

def hash_array_values(hash)
    hash.instance_of? Hash or raise ArgumentError.new("Must pass Hash")
  hash.values
end

def array_hash(arr)
  arr.instance_of? Array or raise ArgumentError.new("Must pass Array")
  arr.length % 2 == 0 or raise ArgumentError.new("Must pass even length Array")
  hash = {}
  arr.each_slice(2) { |kv| hash[kv[0]] = kv[1] }
  hash
end
