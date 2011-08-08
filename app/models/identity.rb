class Identity
  include Mongoid::Document
  field :user_name
  belongs_to  :identity_provider
  embeds_one  :context
  embedded_in :user
end