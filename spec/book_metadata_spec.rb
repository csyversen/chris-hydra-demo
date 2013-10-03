require 'spec_helper'

describe 'book metadata' do

  it 'should have a namespace' do

    b = BookMetadata.new
    # debugger
    b.ng_xml.namespaces[ "xmlns:oai_dc" ].should include "http://www.openarchives.org/OAI/2.0/oai_dc/"

  end

  it 'should have a title' do

    b = BookMetadata.new
    b.title = "Something"
    debugger
    b.title.first.should == "Something"

  end

  it "should have a creator" do

    b = BookMetadata.new
    b.creator = "Something"
    b.creator.first.should == "Something"

  end

  it "should have a subject" do

    b = BookMetadata.new
    b.subject = "Something"
    b.subject.first.should == "Something"

  end

  it "should have a description" do

    b = BookMetadata.new
    b.description = "Something"
    b.description.first.should == "Something"

  end

  it "should have a publisher" do

    b = BookMetadata.new
    b.publisher = "Something"
    b.publisher.first.should == "Something"

  end

  it "should have a type" do

    b = BookMetadata.new
    b.type = "Something"
    b.type.first.should == "Something"

  end

  it "should have an identifier" do

    b = BookMetadata.new
    b.identifier = "Something"
    b.identifier.first.should == "Something"

  end

  it "should have a language" do

    b = BookMetadata.new
    b.language = "Something"
    b.language.first.should == "Something"

  end

  it "should have a relation" do

    b = BookMetadata.new
    b.relation = "Something"
    b.relation.first.should == "Something"

  end

end