class ProfileController < ApplicationController
require 'securerandom'

  def pet_profile
     @user = User.where("id = ?", session[:user_id]).first
     @pet = Pet.where("id = ?", @user.petid).first_or_create
     @user.update_attribute(:petid , @pet.id) if @user.petid != @pet.id
     session[:pet_id] = @pet.id
  end

  def create_complaint
     
  end
  def submit_complaint
     Complaint.create(users_id: session[:user_id], username: params[:complaint][:username], complaint_suggestion: params[:complaint][:content])    
     redirect_to :yourpet_pet_profile
  end
end
