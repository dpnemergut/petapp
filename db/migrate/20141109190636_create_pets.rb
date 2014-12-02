class CreatePets < ActiveRecord::Migration
  def up
		create_table :pets do |t|
			t.column :petid,:string
			t.column :petname, :string
			t.column :breed, :string
			t.column :color, :string
			t.column :dob, :date
			t.column :interest, :text
			t.column :description, :text
			t.column :ownerfname, :text
			t.column :ownerlname, :text
		end
  end

  def down
		drop_table :pets
  end
end
