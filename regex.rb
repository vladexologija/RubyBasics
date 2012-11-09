# matches first x character
puts "xxxxx".match(/x/)
# . matches any single character
puts "xxxxx".match(/x./)
puts "Vladimir".match(/V......r/)
# * matches zero or more apperences of the word before it
puts "ABBCCCDD".match(/AB*/)
# escaping special character
puts "Mr.Anderson".match(/Mr\.Anderson/)
# in set regex matches any of member character
puts "123455".match(/[1234567890]/)
puts "Vladimir".match(/[vV]ladimir/)
# instead of typing all characters use ranges
puts "Mr.Anderson".match(/[a-zA-Z]/)
# | is used as alternative - or
puts "He's shooting with gun".match(/gun|pistol/)
# \d matches any digit
# \w matches any word
# \s matches any space
puts "12:48 PM".match(/\d\d:\d\d\s(AM|PM)/)
# * matches zero or more apperences of the word before it
puts "aebrams".match(/[aeiou]*/)
puts "Barack Obama".match(/.*Obama/)
# regex equality
puts "iPhone" =~ /Android/
puts "HTC Android" =~ /Android/
# i ignorec case
puts "iPhone" =~ /IPHONE/i
# \A matches string at the beginning
puts "a great iPhone".match(/\AiPhone/)
# \z matches end of the string
puts "a great iPhone".match(/iPhone\z/)
# ^ matches beginning of string or beginning of any line
# $ matches end of string or end of any line
# m match across the lines
