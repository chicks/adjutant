Given /^I am the following ([^"]*):$/ do |model_name, table|
  create_from_table(model_name, table)
end

Then /^I should have a user named "([^"]*)" with a password of "([^"]*)"$/ do |name,password|
  # Find the user
  @user = User.where(:name => name).first
  assert_instance_of User, @user
  # Decrypt their password
  assert_equal password, Devise::Encryptors::Aes256.decrypt(@user.encrypted_password, Devise.pepper)
end

