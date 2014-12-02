require 'rails_helper'
describe ProfileController do
  
 describe 'Profile#create_complaint' do
    it "renders the create_complaint view" do
        get :create_complaint
        expect(response).to render_template("create_complaint")
    end
 end
 describe 'Profile#submit_complaint' do
    it "Able to submit the complaint/suggestion" do
        session[:user_id]="1"
        get :create_complaint
        post 'submit_complaint', :complaint => {:username => "santoshi", :content => "This is test complaint"}
        expect(response).to redirect_to(:yourpet_pet_profile)
    end
 end
 
end

