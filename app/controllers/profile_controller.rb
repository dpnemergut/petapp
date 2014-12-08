class ProfileController < ApplicationController
#require 'securerandom'
before_filter :check_login, :only => [:pet_profile, :create_complaint]

  def pet_profile
     check_login
     @user = User.where("id = ?", session[:user_id]).first
     @pet = Pet.where("id = ?", @user.petid).first_or_create
     @user.update_attribute(:petid , @pet.id) if @user.petid != @pet.id
     session[:pet_id] = @pet.id
  end

  def create_complaint
     
  end
  def submit_complaint
     Complaint.create(users_id: session[:user_id], username: params[:complaint][:username], complaint_suggestion: params[:complaint][:content])
     flash[:notice]="Thank you for submitting suggestion/complaint. We will work on that"     
     redirect_to :yourpet_pet_profile
  end
end
