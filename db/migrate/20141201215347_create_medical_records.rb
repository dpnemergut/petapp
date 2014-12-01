class CreateMedicalRecords < ActiveRecord::Migration
  def change
    create_table :medical_records do |t|
      t.integer :pet_id
      t.date :rabies
      t.date :distemper
      t.text :conditions

      t.timestamps
    end
  end
end
