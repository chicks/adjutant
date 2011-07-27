class Asset
  include Mongoid::Document
  
  field :make,  :type => String
  field :model, :type => String
  
end