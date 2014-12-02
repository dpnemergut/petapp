class AddGenderTopets < ActiveRecord::Migration
  def up
  end
	
	def change
		add_column :pets, :gender, :string
	end

  def down
  end
end
