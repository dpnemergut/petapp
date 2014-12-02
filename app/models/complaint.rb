class Complaint < ActiveRecord::Base
	attr_accessible :users_id,:username, :complaint_suggestion

  #before_create do
  #  self.users_id = 1
  #end
end
