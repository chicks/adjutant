class Identity
  @queue = :passwords
  include Mongoid::Document
  field :user_name
  field :sync_time, type: DateTime
  field :sync_status
  embeds_one :identity_provider
  embeds_one :context
  belongs_to :user
  
  def self.perform(id, password)
    i = Identity.find(id)
    sleep rand(10)
    i.sync_time   = Time.now
    i.sync_status = "Successful"
    i.save
    puts "Sync #{i.user_name} / #{password}!"
    true
  end
  
  def provider
    identity_provider.name
  end
  
end