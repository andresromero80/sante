class CreateJoinTableClassificationsTreatments < ActiveRecord::Migration[5.2]
  def change
    create_join_table :classifications, :treatments do |t|
      # t.index [:classification_id, :treatment_id]
      # t.index [:treatment_id, :classification_id]
    end
  end
end
