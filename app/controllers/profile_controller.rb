class ProfileController < ApplicationController
  def pet_profile
		@user = User.find_by_id(session[:user_id])
    @petid = User.find_by_id(session[:user_id]).petid
    if (Pet.find(:first, :conditions =>["petid = ?" , @petid]).nil?)
		 flash[:notice] = "You don't have any Pet information"
    else
     @petinfo = Pet.find(:first, :conditions =>["petid = ?" , @petid])
    end
  end
  def create_complaint
     
  end
  def submit_complaint
     Complaint.create(users_id: session[:user_id], username: params[:complaint][:username], complaint_suggestion: params[:complaint][:content])    
     redirect_to :yourpet_pet_profile
  end
end
