module Adapter
  module Mock
    class << self
    
      ENDPOINT_NAME          = "Mock"
      ENDPOINT_PROVIDES      = [:change_password]
      ENDPOINT_CONFIGURATION = [:host, :auth_user_name, :auth_password]
    
      def change_password(endpoint, user_name, password)
        true
      end
      
    end
  end
end