FactoryGirl.define do
  factory :user do
    first_name 'Dwight'
    last_name  'Shrute'
    password   'letmein'
    email      'dshrute@dm.com'
  end
  factory :identity do
    user_name   'dshrute'
    last_sync   18.days.ago
  end
  factory :context do
    name        'Dunder Mifflin'
  end
  factory :identity_provider do
    name        'Active Directory'
  end
end
