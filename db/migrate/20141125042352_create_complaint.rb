class CreateComplaint < ActiveRecord::Migration
  def self.up
    create_table :complaints do |t|
        t.references :users, :foreign_key => true, :null => false
        t.column :username, :string
        t.column :complaint_suggestion, :text
    end
  end

  def self.down
      drop_table :complaints_suggestions
  end
end
