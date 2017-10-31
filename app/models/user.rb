class User < ApplicationRecord
	attr_accessor :full_name
	validates :email, :first_name, :last_name, :birthdate, :address, :phone_number, presence: true
	validates :sex, presence: true, inclusion: { in: %w(male female),
    message: "%{value} is not a valid sex" }

    has_many :parents, class_name: "User", foreign_key: "parents_id"
    has_one :sibling, class_name: "User", foreign_key: "sibling_id"

	def full_name
		"#{first_name} #{last_name}"
	end

	def age
		age = Date.today.year - birthdate.year
	end
end
