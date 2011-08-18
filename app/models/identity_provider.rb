class IdentityProvider
  include Mongoid::Document
  field :name
  field :adapter
  embedded_in :identity
  
  # Returns the Identity Providers that are available to a specific user
  def self.for(user)
    user.identities.collect { |i| i.identity_provider }
  end
end