class Treatment < ApplicationRecord
	has_and_belongs_to_many :symptoms
	has_and_belongs_to_many :classifications
end
