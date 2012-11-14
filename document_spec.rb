# stubs and mocs
require './document'

describe Document do

  before :each do
    @text = "Ovo je proba"
    @doc = PrintableDocument.new("Title", "Author", @text)
  end

  it "should hold onto contest" do
    @doc.content.should == @text
  end

  it "should return words in array" do
    @doc.words.should include("Ovo")
    @doc.words.should include("je")
    @doc.words.should include("proba")
    @doc.words.include?("proba").should == true
  end

  it "should know the words count" do
    @doc.word_count.should == 3
  end

  it "should know how to print itself" do
    stub_printer = stub(:available? => true)
    @doc.print(stub_printer).should == :success
  end

  it "should know how to print iteslf with mock" do
    moc_printer = mock("Printer")
    moc_printer.should_recieve(:available?).and_return(true)
  end

end
