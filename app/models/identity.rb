class Identity
  include Mongoid::Document
  field :user_name
  embeds_one :identity_provider
  embeds_one :context
  belongs_to :user
end