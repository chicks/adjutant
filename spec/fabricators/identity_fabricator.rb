Fabricator(:identity) do
end

Fabricator(:dshrute_dm_ad, :from => :identity) do
  user_name "dshrute"
  user { Fabricate(:dshrute) }
  after_create do |i| 
    i.context = Fabricate(:dm, identity: i)
    i.identity_provider = Fabricate(:identity, name: "Active Directory", identity: i)
  end
end