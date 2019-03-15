class Symptom < ApplicationRecord
	has_and_belongs_to_many :treatments
	has_and_belongs_to_many :classifications

	has_many :classifications_symptoms
	# accepts_nested_attributes_for :classifications_symptoms, reject_if: :all_blank, allow_destroy: true
end
