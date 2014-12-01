class MedicalRecord < ActiveRecord::Base
  attr_accessible :conditions, :distemper, :pet_id, :rabies
end
