Fabricator(:context) do
end

Fabricator(:dm, :from => :context) do
  name "Dunder Mifflin"
  #identity_providers {Fabricate(:dm_ad)}
end