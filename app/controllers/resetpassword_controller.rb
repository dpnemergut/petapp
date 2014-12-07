class ResetPasswordController < ApplicationController
  def checkQuestion
     question = User.get_security_question(params[:user][:username])
     redirect_to :yourpet_pet_profile
  end
end
