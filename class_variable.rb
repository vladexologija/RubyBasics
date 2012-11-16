# class instance and class variable
module Printing
  class Document

    @@default_paper_size = :a4

    def self.default_paper_size
      @@default_paper_size
    end

    attr_reader :title, :author, :content, :paper_size
    attr_accessor :read_only

    def initialize(title, author, content)
      @title = title
      @author = author
      @content = content
      @paper_size = @@default_paper_size
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

    # write simple and clear methods
    def number_word_characters
      words.inject( 0 ) { |total, word| total += word.size }
    end

    # use unless instead of !if
    def title=(new_title)
      @title = new_title unless @read_only
    end

  end

end


puts Printing::Document.default_paper_size
