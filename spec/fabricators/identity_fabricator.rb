Fabricator(:identity) do
end

Fabricator(:dshrute_dm_ad, :from => :identity) do
  user_name "dshrute"
  after_create do |i| 
    i.identity_provider = Fabricate(:identity, name: "Active Directory", identity: i)
  end
end