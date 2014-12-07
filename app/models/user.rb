class User < ActiveRecord::Base
  attr_accessible :id, :email, :username, :password, :password_confirmation, :petid, :securityQuestion, :securityAnswer, :first_name, :last_name

  has_many :pets

  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  
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

  def self.get_security_question(username)
    user = find_by_username(username)
    if user
       user.securityQuestion
    end
  end
   

end
