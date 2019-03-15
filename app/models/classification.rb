class Classification < ApplicationRecord
	# has_and_belongs_to_many :symptoms

	has_many :assignments
	has_many :symptoms, through: :assignments
end
