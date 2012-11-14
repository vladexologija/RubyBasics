# tests and specs
# Unlike Java which is static typed, Ruby is dynamic typed so
# type checking is preformed at runtime which makes our job
# much harder to figure out does everthing work as it should
# (or in my case did I mess something up). This makes ruby more
# suitable for testing so no method, class or program is not
# complete without tests.

# From start default testing framework was Test::Unit which is
# similar to jUnit. Recently we started switching to RSpec whose
# descriptions ware quite interesting.
require './document'
require 'test/unit'

class DocumentTest < Test::Unit::TestCase

  # setup is called before each test is run
  def setup
    @text = "Ovo je proba"
    @doc = Document.new("Title", "Author", @text)
  end

  def test_document_holds_onto_contest
    assert_equal @text, @doc.content, "Content is here"
  end

  def test_that_doc_can_return_words_in_array
    assert @doc.words.include?("Ovo")
    assert @doc.words.include?("je")
    assert @doc.words.include?("proba")
  end

  def test_that_word_count_is_correct
    assert_equal 3, @doc.word_count, "Word count is OK"
  end

  def test_match
    assert_match /ic\z/,"Stevanovic"
  end

  def test_instance_of
    assert_instance_of String, "test"
  end

  def test_raise
    assert_raise ZeroDivisionError do
      1/0
    end
  end
end

