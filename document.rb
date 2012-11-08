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
    unless @read_only
      @title = new_title
    end
  end

  # use until istead of !while
  def print_first
    document_printed = false
    until document_printed
      puts "until"
      document_printed = true
    end
  end

end

doc = Document.new("Ruby", "Vladimir", "Lorem ipsupm dolores sic amet...")
puts doc.word_count
puts doc.average_word_length
puts doc.number_word_characters
doc.title = "test"
puts doc.title
doc.print_first
