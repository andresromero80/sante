class Symptom < ApplicationRecord
	has_and_belongs_to_many :treatments
	has_and_belongs_to_many :classifications
end
