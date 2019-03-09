class CreateTreatments < ActiveRecord::Migration[5.2]
  def change
    create_table :treatments do |t|
      t.string :name
      t.text :description
      t.string :type_t

      t.timestamps
    end
  end
end
