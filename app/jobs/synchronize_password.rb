module SynchronizePassword
  @queue = :passwords
  
  def self.perform(identity)
    puts "Sync #{identity.user_name}!"
  end
end