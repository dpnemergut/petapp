class CreateUserModel < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.column :username, :string
      t.column :email, :string
      t.column :password, :string
      t.column :petid, :string		
    end
  end

  def self.down
    drop_table :users
  end
end
