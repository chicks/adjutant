Given /^I am the following ([^"]*):$/ do |model_name, table|
  create_from_table(model_name, table)
end

Then /^I should have a user with an email of "([^"]*)" and a password of "([^"]*)"$/ do |email,password|
  # Find the user
  @user = User.where(:email => email).first
  assert_instance_of User, @user
  # Decrypt their password
  assert_equal password, Devise::Encryptors::Aes256.decrypt(@user.encrypted_password, Devise.pepper)
end

