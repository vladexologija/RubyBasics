# Metaprogramming is something that many ruby developers run away from without any valid reason.
# Pershaps one of the reasons is that this level of awareness about the code isn't present in previous
# generations of programming languages. What ever the reason is, metaprogramming isn't complicated
# at all and gives you a secret weapon in your fight for the better code.
# Before we get to our main goal, method_missing functionality, let's make a quick intro to
# Ruby hooks which are part of the metaprogramming but aren't that broadly used as method_missing.
# Ruby hooks are notifications which inform you when things of your interest happen.
# For example when your class has been inhereted you override self.inherited(subclass) method.
# Same works for Modules, you override self.included(class) to find out which class implemented your module.
# Another "interesting" thing is at_exit block which executes right before Ruby interpreter exits.
# The last hook before we move to method_missing is the KGB of hooks: set_trace_func. This little thingie
# executes whever method executes, class is defined or exception raised.
# For example we would like to upgrade someone elses function but aren't that fond of monkeypatching:

class Document
  attr_accessor :description

  def initialize(description)
    self.description = description
  end

end

set_trace_func proc { |event, file, line, id, binding, klass|
  puts "Event: #{event} #{file} #{line} #{id} #{binding} #{klass}"
   if klass == Document and id == :initialize and event == 'return'
    binding.eval "self.description = \"This is amazing :) \" "
   end
}

doc = Document.new("This is crap!!!")
set_trace_func(nil)

puts doc.description

# and now lets see what happens if we mistype method name
# e.g: puts doc.desciption
# we get a NoMethodError which is called by.... wait for it.....method_missing method,
# whic is a part of the Kernel module included in Object class our Document inherits.
# So why not inherit it and make it more usefull by adding (monkeypatching) this

class Document
  def method_missing(method)
    self.send("description")
  end
end

doc = Document.new("This is even better!")
puts doc.desciption

# examine workling
