class ProfileController < ApplicationController
require 'securerandom'

  def pet_profile
     @user = User.where("id = ?", session[:user_id]).first
     @user.update_attribute(:petid , SecureRandom.hex(2).to_s) if (@user.petid == "")
     
     @pet = Pet.where("petid = ?", @user.petid).first_or_create do |newPet|
       newPet.petid = @user.petid
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
