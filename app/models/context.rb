class Context
  include Mongoid::Document
  field :name
  validates_presence_of :name
  embedded_in :identity
  
  def self.for(user)
    user.identities.collect { |i| i.context }
  end
end