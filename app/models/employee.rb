class Employee < ApplicationRecord
    has_many :documents


	validates :first_name, :last_name, presence: true
	validates :personal_email, presence: true, uniqueness: true
	validates :city, :state, :country, :pincode, :address_line_1, presence: true
end
