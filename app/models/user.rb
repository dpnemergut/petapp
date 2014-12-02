class User < ActiveRecord::Base
  attr_accessible :id, :email, :username, :password, :petid
  
  def self.authenticate_by_username(username, password)
     user = find_by_username(username)
     if user && user.password == password
       user
     else
       nil
     end
  end

  def self.find(id)
     user = find_by_id(id)
  end

end
