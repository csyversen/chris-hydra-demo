class BookMetadata < ActiveFedora::OmDatastream

  set_terminology do |t|
    t.root(path: "dc", :xmlns=>"http://purl.org/dc/elements/1.1/")
    t.title(index_as: :stored_searchable)
    t.author(index_as: :stored_searchable)
    t.publication_date(index_as: :stored_searchable)
    t.publisher(index_as: :stored_searchable)
  end

  def self.xml_template
    Nokogiri::XML.parse('<dc:dc xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.openarchives.org/OAI/2.0/oai_dc/ http://www.openarchives.org/OAI/2.0/oai_dc.xsd"/>')

    t.root(         :path=>"oai_dc", :xmlns => "http://www.openarchives.org/OAI/2.0/oai_dc/" )
    t.title(        :namespace_prefix => "dc", index_as: :stored_searchable )
    t.creator(      :namespace_prefix => "dc", index_as: :stored_searchable )
    t.subject(      :namespace_prefix => "dc", index_as: :stored_searchable )
    t.description(  :namespace_prefix => "dc", index_as: :stored_searchable )
    t.publisher(    :namespace_prefix => "dc", index_as: :stored_searchable )
    t.type(         :namespace_prefix => "dc", index_as: :stored_searchable )
    t.identifier(   :namespace_prefix => "dc", index_as: :stored_searchable )
    t.language(     :namespace_prefix => "dc", index_as: :stored_searchable )
    t.relation(     :namespace_prefix => "dc", index_as: :stored_searchable )
  end

end