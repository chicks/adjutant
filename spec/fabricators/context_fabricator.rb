Fabricator(:context) do
  identity
end

Fabricator(:dm, :from => :context) do
  name "Dunder Mifflin"
  user { fabricate(:dshrute)}
end