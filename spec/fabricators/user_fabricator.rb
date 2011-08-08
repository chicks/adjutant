Fabricator(:user) do
end

Fabricator(:dshrute, :from => :user) do
  first_name "Dwight" 
  last_name  "Shrute"
  email      "dshrute@dm.com"
  password   "letmein"
  after_create {|u| u.identities << Fabricate(:dshrute_dm_ad, user: u)}
end