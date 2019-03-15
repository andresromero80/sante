class Symptom < ApplicationRecord
	# has_and_belongs_to_many :treatments
	# has_and_belongs_to_many :classifications

	has_many :assignments
	has_many :classifications, through: :assignments
	
	has_many :relations
	has_many :treatments, through: :relations
end
