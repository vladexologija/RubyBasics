class Document

  attr_reader :title, :author, :content
  attr_accessor :read_only # this is in fact a method call by interpreter attr_accessor(:read_only)

  def initialize(title, author, content)
    @title = title
    @author = author
    @content = content
  end

  def about_me
    puts "I am #{self.class}"
    puts "My title is #{self.title}"
    puts "I have #{self.word_count}"
  end

  def eval_test(param)
    puts(eval(param))
  end

  def words
    @content.split
  end

  def word_count
    words.size
  end

  def average_word_length
    number_word_characters / word_count
  end

  def number_word_characters
    words.inject( 0 ) { |total, word| total += word.size }
  end

end

class Title
  attr_reader :long_name, :short_name
  attr_reader :isbn

  def initialize(long_name, short_name, isbn)
    @long_name = long_name
    @short_name = short_name
    @isbn = isbn
  end

  def to_s
    "\"#{@long_name} (#{short_name})\""
  end
end

class Author
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

end
# works fine since ruby is dynamic typed language
# no interface check, no hyrarchy
title = Title.new("Lord of the Rings","LOTR","232323")
author = Author.new("J. R. R.","Tolkien")
doc = Document.new(title, author, "Lorem ipsum doloret sic amet")
doc.about_me
# takes string and executes as if it's ruby code
puts(eval("doc.word_count"))
puts doc.instance_variables.inspect
puts doc.send(:word_count)
# Ruby does not compare object types but
# instead looks for right of kind of methods


