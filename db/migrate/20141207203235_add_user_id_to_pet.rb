class AddUserIdToPet < ActiveRecord::Migration
  def change
    change_table :pets do |t|
      t.belongs_to :user
    end
  end
end
