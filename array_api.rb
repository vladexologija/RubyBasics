array = [1,2,3]
puts array + [1,2,3]
puts array.clear
# map - invokes block once for each element of self,
# replacing thew valu with the value returned by block
puts [1,2,3].map {|e| e * 2}
# compact - removes nil elements
puts ["a", nil, "b", nil].compact
# count
puts [0,1,2,3,4].count
puts [0,1,3,3,4].count {|x| x%2==0}
# cycle - calls block for each element repeatedly
# for n times
puts [0,1].cycle(2) {|x| puts x}
# delete - deletes an object
puts ["first","second"].delete("first")
puts ["first","second"].delete_at(0)
# delete if - deletes if block evaluets true
puts [0,1,2,3,4].delete_if {|x| x%2==0}
# each index
puts ["first","second"].each_index {|x| puts x}
# empty
puts [].empty?
# index
puts [0,1,2].index(1)
# include
puts ["first", "second"].include?("first")
# insert
puts ["first","third"].insert(1,"second")
# join
puts [0,1,2].join("-")
# reverse
puts [0,1,2].reverse
# shift, removes element, shifts others in
# it's place
shft = [0,1,2]
puts shft.shift
puts shft
# sort
puts [0,1,2,3,4].sort {|x,y| y<=>x}
# take
puts ["first","second","third"].take(2)
# uniq 
puts [0,1,0,1,4].uniq