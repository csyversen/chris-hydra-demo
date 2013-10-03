require 'spec_helper'

describe 'book metadata' do 

  it 'should have a root element' do
    b = BookMetadata.new
    b.ng_xml.namespaces['xmlns:dc'].should include 'http://purl.org/dc/elements/1.1/'
  end

  it 'should have a title' do
    b = BookMetadata.new
    b.title = 'Cool Title'
    b.title.first.should == 'Cool Title'
  end


  
end