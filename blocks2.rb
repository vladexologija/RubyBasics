# blocks 2
# adding enumerable module adds many useful methods for iteration like include?, sort...
# dont confuse enumerable with enumerator. Enumerable is module and enumerator is
# same as Java Iterator
# ensure is great for makins sure that block doesn't screw something up
# break causes method that made the block to return

require './document'

doc = Document.new("Ruby", "Vladimir", "Lorem ipsupm dolores sic amet...")
puts doc.include?("Lorem")
puts doc.find_all{ |word| word.length > 5}.inspect
puts doc.sort.inspect

# we can also add initilazition block
doc = Document.new("Ruby", "Vladimir", "") do |d|
  d.content = "thghghg"
end
puts doc.content

def run_the_block(&the_block)
  the_block.call if the_block
end

run_the_block do
  puts "plain block"
end

def runt_the_crap(block)
  block.call
end
# lambda creates block similar tu regular method
lambda_block = lambda {puts "proc_block"}
runt_the_crap(lambda_block)

# proc.new creates default block
# proc block which ignores extra params, and if less adds nil
# adds support for return and break which stop the metheod that created the block
proc_block = Proc.new {puts "lambda_block"}
runt_the_crap(proc_block)
