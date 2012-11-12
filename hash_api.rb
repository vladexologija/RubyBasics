hsh = {a: 100, b: 200}
puts hsh
# clear - removes all elements
puts hsh.clear
# delete - removes just one
hsh = {a: 100, b: 200}
puts hsh.delete(:a)
# delete if
hsh = {a: 1, b: 2, c: 3, d: 4, e: 5}
hsh.delete_if {|key,value| value%2==0}
puts hsh
# each key
hsh.each_key {|key| puts key}
# each value
hsh.each_value {|value| puts value}
# empty
puts hsh.empty?
# flatten
puts hsh.flatten
# has key
hsh = {a: 1, b: 2, c: 3, d: 4, e: 5}
puts hsh.has_key?(:a)
puts hsh.has_key?("a")
puts hsh.has_value?(1)
# length
puts hsh.length
# shift
puts hsh.shift