class Person < ApplicationRecord
	include ActiveModel::AttributeMethods

	include ActiveModel::SecurePassword
  	has_secure_password
  	has_secure_password :recovery_password, validations: false
 
  	attr_accessor :password_digest, :recovery_password_digest
 
	attribute_method_prefix 'reset_'
	attribute_method_suffix '_highest?'
	define_attribute_methods 'age'
	attr_accessor :age
	 
	private
    def reset_attribute(attribute)
      send("#{attribute}=", 0)
    end
 
    def attribute_highest?(attribute)
      send(attribute) > 100
    end
	
end
