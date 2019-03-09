class CreateJoinTableClassificationsSymptoms < ActiveRecord::Migration[5.2]
  def change
    create_join_table :classifications, :symptoms do |t|
      # t.index [:classification_id, :symptom_id]
      # t.index [:symptom_id, :classification_id]
    end
  end
end
