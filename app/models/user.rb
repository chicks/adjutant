class User 
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :encryptable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  field :first_name
  field :last_name
  
  has_and_belongs_to_many :contexts
  embeds_many :identities

  validates_presence_of :first_name, :last_name
  validates_uniqueness_of :email, :case_sensitive => false
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me
  
  before_create :initialize_first_context
    
  def name
    first_name + " " + last_name
  end
  
  def encrypt(string)
    Devise::Encryptors::Aes256.digest(string, 10, Devise::Encryptors::Aes256.salt, Devise.pepper)
  end
  
  def initialize_first_context
    self.contexts << Context.create(name: "My Identities")
  end
  
end