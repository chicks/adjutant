class User 
  include Mongoid::Document
  include Mongoid::Timestamps
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :encryptable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  field :first_name
  field :last_name
  
  has_many :contexts
  
  validates_presence_of :first_name, :last_name
  validates_uniqueness_of :email, :case_sensitive => false
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me
  
  #before_create :initialize_primary_context
    
  def name
    first_name + " " + last_name
  end
  
  def encrypt(string)
    Devise::Encryptors::Aes256.digest(string, 10, Devise::Encryptors::Aes256.salt, Devise.pepper)
  end
  
  def decrypted_password
    ::Devise::Encryptors::Aes256.decrypt(encrypted_password, Devise.pepper)
  end
  
  def flatten_identities
    ids = {}
    identities.each do |i|
      ids[i.context.name] ||= []
      ids[i.context.name] << i
    end
    ids
  end
  
  #def initialize_primary_context
  #  self.contexts << Context.create(name: "My Identities")
  #end
  
end