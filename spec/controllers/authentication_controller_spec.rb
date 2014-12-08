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
    user = User.create!(:id=> "123", :username => "santoshi", :password => "hello", :password_confirmation => "hello")
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

