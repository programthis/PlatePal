class Patient < ActiveRecord::Base
	has_secure_password

	has_many :photos
	has_many :goals
end
