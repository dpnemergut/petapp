require "rails_helper"

RSpec.describe MedicalrecordsController, :type => :routing do
  describe "routing" do

    it "routes to #show" do
      expect(:get => "/yourpet/medical_record").to route_to("medicalrecords#show")
    end

    it "routes to #edit" do
      expect(:get => "/yourpet/medical_record/edit").to route_to("medicalrecords#edit")
    end

    it "routes to #update" do
      expect(:put => "/yourpet/medical_record.1").to route_to("medicalrecords#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/yourpet/medical_record/").to route_to("medicalrecords#destroy")
    end

  end
end
