class Identity
  include Mongoid::Document
  field :user_name
  field :last_sync, type: DateTime
  embeds_one :identity_provider
  embeds_one :context
  belongs_to :user
end