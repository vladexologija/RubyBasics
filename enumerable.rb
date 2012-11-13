ary = ["ant", "bear", "cat"]
# all
puts ary.all? {|word| word.length > 2}
puts ary.all? {|word| word.length > 3}

# any
puts ary.any? {|word| word.length > 3}
puts ary.any? {|word| word.length > 4}

# none
puts ary.none? {|word| !word || word.length == 0}

# flat_map
puts [[1,2],[3,4],[5,6]].flat_map{|i| i.length}

# cycle
puts ary.cycle(2){|x| puts x}

# drop
# delete - removes element
# delete_at - removes at index
# delete_if - removes if block resolves true
puts "drop:"
puts [1, 2, 3, 4, 5, 0].drop(2)

# drop_while
puts [1, 2, 0, 4, 5, 3].drop_while {|i| i != 0}

# take
puts "take:"
puts [1, 2, 3, 4, 5, 0].take(2)

# take_while
puts [1, 2, 0, 4, 5, 3].take_while {|i| i != 0}

# each slice
puts "each_slice:"
(1..10).each_slice(3) {|i| puts i.inspect}

# find
puts "find:"
puts ary.find {|word| word.length > 2}

# find_all
puts "find_all:"
puts ary.find_all {|word| word.length > 2 }

# find_index
puts "find_index:"
puts ary.find_index {|word| word.length > 3 && word[0] = "b"}

# inject
puts (1..5).inject {|sum,n| sum + n}

# sort
puts (1..5).sort {|a,b| b<=>a }
