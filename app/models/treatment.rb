class Treatment < ApplicationRecord
	# has_and_belongs_to_many :symptoms
	has_many :relations
	has_many :symptoms, through: :relations
end
