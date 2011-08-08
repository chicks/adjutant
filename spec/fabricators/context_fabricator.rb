Fabricator(:context) do
  identity
end

Fabricator(:dm, :from => :context) do
  name "Dunder Mifflin"
end