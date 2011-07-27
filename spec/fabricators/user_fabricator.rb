Fabricator(:user) do
end

Fabricator(:dshrute, :from => :user) do
  name      "Dwight Shrute"
  email     "dshrute@dm.com"
  password  "letmein"
  employee  { Fabricate(:dwight) }
end