class AuthenticationController < ApplicationController
  def sign_in
    @user = User.new
  end

  def login
    username= params[:user][:username]
    password = params[:user][:password]
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
      @user_id=session[:user_id]
      @user=User.find(@user_id)
      @user.update_attribute(:petid , @pet.id)
      redirect_to :yourpet_pet_profile
    else
      render :action => "new_pet"
    end
  end

   def checkQuestion
     question = User.get_security_question(params[:username])
     
  end
   def forgot_password
     @user = User.new
  end
  def forgot_password1
    @username=params[:user][:username]
    @user = User.where("username = ?", @username).first
    
    if @user.nil?
      flash[:notice] = "Unknown User"
      redirect_to :yourpet_forgot_password
    else
      session[:user_id] = @user.id
      redirect_to :yourpet_reset_password
    end
  end
  def reset_password
      @user=User.find(session[:user_id])
      @user.securityAnswer = ""
  end
  def validate_answer
      @user=User.find(session[:user_id])
      @securityAnswer = params[:user][:securityAnswer]
      @mat=@user.securityAnswer
      if @mat==@securityAnswer
         flash[:notice] = "#{@user.username}, your password is #{@user.password}" 
         redirect_to :yourpet_sign_in
      else
         flash[:notice] = "Your answer is wrong"
         redirect_to :yourpet_reset_password
      end
  end
end
