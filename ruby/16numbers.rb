#!/usr/bin/ruby

# Oh, this is ugly
def using_each(arr)
  result = []
  acc = []
  arr.each { |e| 
    acc << e
    if (acc.length === 4 or e === arr.last)
      result << acc
      acc = []
    end
  }
  result
end

def using_each_slice(arr)
  result = []
  arr.each_slice(4) { |slice| result << slice }
  result
end
