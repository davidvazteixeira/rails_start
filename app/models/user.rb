class User < ActiveRecord::Base
	before_save {self.email = email.downcase}
	validates_uniqueness_of :email

	has_secure_password
	validates :password, length: { within: 4..8 }
end
