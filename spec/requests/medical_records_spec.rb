require 'rails_helper'

RSpec.describe "MedicalRecords", :type => :request do
  describe "GET /medical_records" do
    it "works!" do
      get medical_record_path
      expect(response).to have_http_status(200)
    end
  end
end
