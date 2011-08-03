Fabricator(:identity_provider) do
end

Fabricator(:dm_ad, :from => :identity_provider) do
  name "Active Directory"
end

Fabricator(:dm_box, :from => :identity_provider) do
  name "box.net"
end

Fabricator(:dm_sugar, :from => :identity_provider) do
  name "SugarCRM"
end
