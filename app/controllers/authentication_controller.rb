class AuthenticationController < ApplicationController
  def sign_in
    @user = User.new
  end

  def login
    username= params[:user][:username]
    password = params[:user][:password]
    username=username
    user = User.authenticate_by_username(username, password)
    if user
      session[:user_id] = user.id
      #pom = PetOfMonth.petid
      pom = "Dally the Rottwieller"
      flash[:notice] = "Pet of the month: #{pom}."
      if username == "admin" && password == "admin"
         redirect_to :yourpet_admin_view
      else
         redirect_to :yourpet_pet_profile
      end
    else
      flash.now[:error] = 'Please check your username and password.'
      render :action => "sign_in"
    end
  end

  def signed_out
    # clear the authentication toke when the user manually signs out
     user = User.find_by_id(session[:user_id])

     if user
       #update_authentication_token(user, nil)
       user.save
       session[:user_id] = nil
       flash[:notice] = "You have been signed out."
       redirect_to :yourpet_sign_in
     else
       redirect_to :yourpet_sign_in   
     end
  end
  def new_user
     @user = User.new
  end

  def register
    @user = User.new(params[:user])
    
    if @user.valid?
     @user.save     
     session[:user_id] = @user.id
     flash[:notice] = 'Welcome.'
     redirect_to :yourpet_new_pet
    else
     render :action => "new_user"
    end
  end

  def new_pet
    @pet = Pet.new
  end

  def register_pet
    @pet = Pet.new (params[:pet])
    
    if @pet.valid?
      @pet.save
      session[:pet_id] = @pet.id
      redirect_to :root
    else
      render :action => "new_pet"
    end
  end

  def forgot_password
  end
end
