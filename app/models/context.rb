class Context
  include Mongoid::Document
  field :name
  validates_presence_of :name
  embedded_in :identity
end