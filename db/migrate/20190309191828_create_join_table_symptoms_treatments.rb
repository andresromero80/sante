class CreateJoinTableSymptomsTreatments < ActiveRecord::Migration[5.2]
  def change
    create_join_table :symptoms, :treatments do |t|
      # t.index [:symptom_id, :treatment_id]
      # t.index [:treatment_id, :symptom_id]
    end
  end
end
