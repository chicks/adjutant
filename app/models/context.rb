class Context
  include Mongoid::Document
  field :name
  validates_presence_of :name
  embeds_many :identities
  belongs_to :user
  
  def self.for(user)
    user.identities.collect { |i| i.context }
  end
end