class IdentityProvider
  include Mongoid::Document
  field :name
  has_many :identities
  embedded_in :context
end