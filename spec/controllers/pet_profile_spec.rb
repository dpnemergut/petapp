require 'rails_helper'
describe ProfileController do
 describe 'Profile#submit_complaint' do
    it "Able to submit the complaint/suggestion" do
        session[:user_id]="1"
        get :create_complaint
        post 'submit_complaint', :complaint => {:username => "santoshi", :content => "This is test complaint"}
        expect(response).to redirect_to(:yourpet_pet_profile)
    end
 end
 
end

