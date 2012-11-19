# blocks
# block is considered as invisible parameter passed to a method which expects it
# to check do we have block use block_given?
require './document'

def do_something
  yield if block_given?
end

# blocks can take arguments
def do_something_with_params
  yield("parameter") if block_given?
end

# as everything last line executes
def do_something_with_params_line
  if block_given?
    value = yield
    puts value
  end
end

do_something do
  puts "block"
end

do_something_with_params do |message|
  puts "block message: #{message}"
end

do_something_with_params_line do
  "print"
end

doc = Document.new("Ruby", "Vladimir", "Lorem ipsupm dolores sic amet...")
doc.each_word do |word|
  puts word
end
