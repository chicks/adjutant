Fabricator(:identity) do
  user
end

Fabricator(:dshrute_dm_ad, :from => :identity) do
  user_name "dshrute"
  after_create {|i| i.context = Fabricate(:dm, :identity => i)}  
end