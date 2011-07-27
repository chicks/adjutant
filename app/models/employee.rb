class Employee
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name
  validates_presence_of :name
  validates_uniqueness_of :name, :case_sensitive => false
  
  has_one :user
end
