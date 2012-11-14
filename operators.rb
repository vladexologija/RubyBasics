require './document'

doc1 = Document.new("Lord of the Rings","Tolkein", "Mordor Gondor Minas Tiright")
doc2 = Document.new("Hobbit", "Tolkein", "Dragon Golumn")
union = doc1 + doc2
puts union.content
adition = doc1 << " test"
puts adition.content
puts adition[0]

