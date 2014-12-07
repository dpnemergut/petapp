require "rails_helper"

RSpec.describe MedicalRecordsController, :type => :routing do
  describe "routing" do

    it "routes to #show" do
      expect(:get => "/yourpet/medical_record").to route_to("medical_records#show")
    end

    it "routes to #edit" do
      expect(:get => "/yourpet/medical_record/edit").to route_to("medical_records#edit")
    end

    it "routes to #update" do
      expect(:put => "/yourpet/medical_record.1").to route_to("medical_records#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/yourpet/medical_record/").to route_to("medical_records#destroy")
    end

  end
end
