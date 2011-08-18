module Net
  autoload :LDAP, 'net/ldap'
end

module Adapter
  module ActiveDirectory

    ENDPOINT_NAME          = "Active Directory"
    ENDPOINT_PROVIDES      = [:change_password]
    ENDPOINT_CONFIGURATION = [:host, :port, :encryption, :base_dn, :auth_method, :auth_user_name, :auth_password]
      
    class << self
    
      def change_password(endpoint, user_name, password)
        auth = {
          :method => endpoint[:auth_method], 
          :username => endpoint[:auth_user_name], 
          :password => endpoint[:auth_password]
        }
        Net::LDAP.open( 
          host: endpoint[:host], encryption: endpoint[:encryption], 
          port: endpoint[:port], auth: auth
        ) do |ldap|
           filter = Net::LDAP::Filter.eq( "sAMAccountName", user_name)
           user_dn = ldap.search( :base => endpoint[:base_dn], :filter => filter, :return_result => true )[0].dn
           unicode_password = ""
           password = "\"" + password + "\""
           password.length.times {|c| unicode_password += "#{password[c..c]}\000" }
           ldap.replace_attribute(user_dn, :unicodePwd, unicode_password)      
         end
      end
    end
  end
end