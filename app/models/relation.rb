class Relation < ApplicationRecord
  belongs_to :symptom
  belongs_to :treatment
end
