# modules
# modules can be used as namespaces to hold methods,constant,classes and other modules
# can be used as static/utility class simulation
# unlike in java where you can only have one package with single name, in ruby they simply add up
# mixins allow us to share common code among classes that have nothing else in common

module WordProcessor

  # standalone utility methods
  def self.points_to_inches(points)
    points / 72.0
  end

  # method useful for including(mixing) into other classes
  # module can be extended and these become class methods
  def inches_to_points(inches)
    inches * 72.0
  end

end

module Printing

  DEFAULT_PRINTING = :a4

  class Document
    include WordProcessor

    attr_reader :title, :author, :content, :paper_size
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

  end

end

include Printing
# elements accessed by using ::
puts Document.new("Ruby", "Vladimir", "Lorem ipsupm dolores sic amet...")
puts Printing::DEFAULT_PRINTING
puts WordProcessor.points_to_inches(1)

# as everything in ruby modules are alsp objets
the_module = Printing
doc = the_module::Document.new("Ruby", "Vladimir", "Lorem ipsupm dolores sic amet...")

puts doc.kind_of?(WordProcessor)
puts Document.ancestors.inspect
