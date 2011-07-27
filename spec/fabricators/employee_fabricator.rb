Fabricator(:employee) do
end

Fabricator(:dwight, :from => :employee) do
  name "Dwight Shrute"
end
