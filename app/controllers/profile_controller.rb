class ProfileController < ApplicationController
  def pet_profile
  
  end
  def create_complaint
     
  end
  def submit_complaint
     Complaint.create(users_id: session[:user_id], username: params[:complaint][:username], complaint_suggestion: params[:complaint][:content])    
     redirect_to :yourpet_pet_profile
  end
end
