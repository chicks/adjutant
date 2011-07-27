Given /^I have an active ([^"]*) account:$/ do |model_name, table|
  create_from_table(model_name, table)
end

When /^I enter my credentials$/ do |fields|
  fields.rows_hash.each do |name, value|
    When %{I fill in "#{name}" with "#{value}"}
  end
end

