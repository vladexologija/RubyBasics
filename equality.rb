require './document'
doc = Document.new("Ruby", "Vladimir", "Lorem ipsupm dolores sic amet...")
other_doc = Document.new("Ruby", "Vladimir", "Something completely different")
doc2 = doc
puts doc.equal?(doc2)
puts doc == other_doc