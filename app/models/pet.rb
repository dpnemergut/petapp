class Pet < ActiveRecord::Base
	attr_accessible :petid, :petname, :breed, :color, :dob, :interest, :description, :ownerfname, :ownerlname, :gender
    
    belongs_to :user
end
