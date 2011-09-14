class Identity
  include ActionView::Helpers::DateHelper
  include Mongoid::Document
  @queue = :passwords
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
  
  def sync_time
   time_ago_in_words(read_attribute :sync_time) + " ago"
  end
  
end