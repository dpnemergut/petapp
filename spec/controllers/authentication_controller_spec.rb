require 'rails_helper'
describe AuthenticationController do
  
 describe 'authentication#sign_in' do
    it "renders the sign_in view" do
        get :sign_in
        expect(response).to render_template("sign_in")
    end
 end
 
 describe "authentication#login" do
   it "allows users to sign In" do
     # get :sign_in
     #expect(response).to render_template("sign_in")
     #@user_id= "1234"
     #@user = double(:username => 'santoshi', :password => 'hello')
     #User.find(:all, @user_id) .and_return @user
     #user = User.new
     #@user.id = "1234"
     #@user.username = "santoshi"
     #@user.password = "hello"
     #User.create!(@user.attributes)
     #expect(user).to receive(:find).with(@user_id)
     #expect(user).to receive(:authenticate_by_username).with("santoshi", "hello")
     #post :sign_in 
     #expect(response).to redirect_to(:yourpet_pet_profile)
    user = User.create!(:id=> "123", :username => "santoshi", :password => "hello")
    get :sign_in
    post 'login', :user => {:username => "santoshi", :password => "hello"}
    expect(response).to redirect_to(:yourpet_pet_profile)
   end
 end
 describe "authentication#register" do
   it "allows users to visit registration page" do
      post :new_user
      expect(response).to render_template("new_user")
   end
 end
 describe "authentication#forgot_password" do
    it "allows users to visit forgot_password page" do
       get :forgot_password
       expect(response).to render_template("forgot_password")
    end
 end
end

