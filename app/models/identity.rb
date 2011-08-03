class Identity
  include Mongoid::Document
  belongs_to  :identity_provider
  embedded_in :user
end