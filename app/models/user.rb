class User < ActiveRecord::Base
  attr_accessible :email, :username, :password, :petid
  
  def self.authenticate_by_email(email, password)
  user = find_by_email(email)
  if user && user.password == password
    user
  else
    nil
  end
end

def self.authenticate_by_username(username, password)
  user = find_by_username(username)
  if user && user.password == password
    user
  else
    nil
  end
end
end
