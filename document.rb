class Document

  attr_reader :title, :author, :content
  attr_accessor :read_only

  def initialize(title, author, content)
    @title = title
    @author = author
    @content = content
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

  # use unless instead of !if
  def title=(new_title)
    @title = new_title unless @read_only
  end

  # use until istead of !while
  def print_first
    document_printed = false
    until document_printed
      puts "until"
      document_printed = true
    end
  end

  # use each not for
  def print_fonts
    fonts = ['courier','times roman', 'helvetica']
    fonts.each do |font|
      puts font
    end
  end

  # case example
  def get_title
    title = "LOTR"
    author = case title
    when "LOTR"
      "Tolkein"
    when "SW"
      "George Lucas"
    end
    author
  end

  def tertiary_operator
    test = true
    test ? "ruby" : "java"
  end

  def nvl
    first_name ||= "Vladimir"
  end

  def create_array
    "vratiti ce se adnan s tisucu momkaka".split
  end

  # either way is ok
  def create_hash
    hash = { :first_element => "First", :second_element => "Second" }
    hash = { first_element: 'First', second_element: 'Second' }
  end

  # arbitrary set of arguments
  def load_array(first, *args)
    args.size
  end

  # simple hash iteration
  def iterate_hash
    hash = create_hash
    hash.each do |key, value|
      puts "KEY:#{key} VALUE:#{value}"
    end
  end

  # searching in array
  def find_in_array(word)
    array = create_array
    puts array.inspect
    array.index { |element| element == word }
  end

  def map_array
    array = create_array
    array.map { |word| ">>#{word}<<"  }
  end

  def inject_array
    array = create_array
    array.inject(0) {|result, word| word.size + result}
  end

  def delete_if_array
    array = create_array
    array.delete_if {|word| word.size < 3}
  end

end

doc = Document.new("Ruby", "Vladimir", "Lorem ipsupm dolores sic amet...")
puts doc.word_count
puts doc.average_word_length
puts doc.number_word_characters
doc.title = "test"
puts doc.title
doc.print_first
doc.print_fonts
puts doc.get_title
puts doc.tertiary_operator
puts doc.nvl
puts doc.create_hash
puts doc.load_array("first","second","third")
doc.iterate_hash
puts doc.find_in_array("ce")
puts doc.map_array
puts doc.inject_array
puts doc.delete_if_array
