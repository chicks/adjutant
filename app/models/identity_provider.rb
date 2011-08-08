class IdentityProvider
  include Mongoid::Document
  field :name
  embedded_in :identity
end