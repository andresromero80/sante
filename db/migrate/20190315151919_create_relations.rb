class CreateRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :relations do |t|
      t.references :symptom, foreign_key: true
      t.references :treatment, foreign_key: true

      t.timestamps
    end
  end
end
