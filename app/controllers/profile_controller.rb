class ProfileController < ApplicationController

  def pet_profile
     @user = User.where("id = ?", session[:user_id]).select("petid").first
     @pet = Pet.where("petid = ?", @user.petid).first_or_create do |newPet|
       newPet.petid = pet_string
     end
     session[:pet_id] = @pet.id
  end

  def create_complaint
     
  end
  def submit_complaint
     Complaint.create(users_id: session[:user_id], username: params[:complaint][:username], complaint_suggestion: params[:complaint][:content])    
     redirect_to :yourpet_pet_profile
  end
end
