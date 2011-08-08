Fabricator(:user) do
end

Fabricator(:dshrute, :from => :user) do
  first_name "Dwight" 
  last_name  "Shrute"
  email      "dshrute@dm.com"
  password   "letmein"
end