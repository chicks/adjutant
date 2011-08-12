class Identity
  @queue = :passwords
  include Mongoid::Document
  field :user_name
  field :last_sync, type: DateTime
  embeds_one :identity_provider
  embeds_one :context
  belongs_to :user
  
  def self.perform(id, password)
    identity = Identity.find(id)
    puts "Sync #{identity.user_name} / #{password}!"
  end
  
  def provider
    identity_provider.name
  end
  
end