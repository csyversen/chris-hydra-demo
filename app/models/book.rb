class Book < ActiveFedora::Base
  include Hydra::ModelMixins::RightsMetadata
  
  has_metadata "rightsMetadata", type: Hydra::Datastream::RightsMetadata
  has_metadata 'descMetadata', type: BookMetadata

  has_many :pages, :property=> :is_part_of

  delegate :title, to: 'descMetadata', unique: true
  delegate :author, to: 'descMetadata', unique: true
  delegate :publication_date, to: 'descMetadata', unique: true
  delegate :publisher, to: 'descMetadata', unique: true

end