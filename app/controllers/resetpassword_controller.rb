class ResetPasswordController < ApplicationController
  def checkQuestion
     question = User.get_security_question(params[:username])
     
  end
end
