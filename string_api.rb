# multiplying string
puts "Lazio " * 3
# concatenation
puts "hello " << "world"
# slicing
str = "test"
puts str[1]
puts str[0..3]
puts str[0, 3]
# capitalize
puts str.capitalize
# each char
str.each_char { |e| puts e }
# chops carriage return
puts "test\n".chomp
puts "test".chomp
puts "test".chomp("st")
# clear
puts str.clear
# delete (doesn't work without params)
puts "test".delete("e")
# slice
puts "test".slice(0..2)
# downcase
puts "TINTIN".downcase
# empty
puts "".empty?
puts " ".empty?
puts nil.to_s.empty?
# end_with?
puts "123-AB-456".end_with?("6")
# sub
puts "123-AB-456".sub(/\d/, "*")
# gsub
puts "123-AB-456".gsub(/\d/, "*")
# replace
puts "123-AB-456".replace("987-CD-654")
# insert
puts "XZ".insert(1,"Y")
# prepend
puts "lazio".prepend("forza ")
# include?
puts "123-AB-456".include?("AB")
# match
puts "123-AB-456".match(/[\d]*/)
# scan
puts "123-AB-456".scan(/\d/)
# strip
puts "some text    ".strip.inspect
# revrese
puts "NATO".reverse
# size
puts "size".size
# spilit
puts "this string".split
# upto
"a".upto("d") {|c| puts c}
