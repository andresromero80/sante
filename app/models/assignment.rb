class Assignment < ApplicationRecord
  belongs_to :classification
  belongs_to :symptom
end
