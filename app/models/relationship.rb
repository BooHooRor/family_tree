class Relationship < ApplicationRecord
	has_many :parents, class_name: "User"
	hes_one :sibling, class_name: "User"
	belongs_to :user
end