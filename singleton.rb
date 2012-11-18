# every object carries singleton class which sits between object(instance) and class
# class << singleton_class - you change context so self is singleton class

require "./document"

doc = Document.new("Ruby", "Vladimir", "Lorem ipsupm dolores sic amet...")

def doc.explain
	puts self
	puts self.class
end

doc.explain

doc2 = Document

#class method is just signleton metod on instance of class
def doc2.explain
	puts self
	puts self.class
end

doc2.explain