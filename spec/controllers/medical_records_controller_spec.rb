require 'rails_helper'

# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe MedicalRecordsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # MedicalRecord. As you add validations to MedicalRecord, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {:id => 1, :pet_id => 1, :rabies => Date.new(2014,12,2), :distemper => Date.new(2014,12,2), :conditions => "Sweaty Armpits"}
  }

  let(:invalid_attributes) {
    {:id => "H", :pet_id => "H", :rabies => "HHHHHHHH", :distemper => "HHHHHHHH"}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MedicalRecordsController. Be sure to keep this updated too.
  let(:valid_session) {{ :pet_id => 1}}

  describe "GET show" do
    it "assigns the requested medical_record as @medical_record" do
      medical_record = MedicalRecord.create! valid_attributes
      get :show, {:id => medical_record.to_param}, valid_session
      expect(assigns(:medical_record)).to eq(medical_record)
    end
  end

  describe "GET edit" do
    it "assigns the requested medical_record as @medical_record" do
      medical_record = MedicalRecord.create! valid_attributes
      get :edit, {:id => medical_record.to_param}, valid_session
      expect(assigns(:medical_record)).to eq(medical_record)
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "assigns the requested medical_record as @medical_record" do
        medical_record = MedicalRecord.create! valid_attributes
        put :update, {:id => medical_record.to_param, :medical_record => valid_attributes}, valid_session
        expect(assigns(:medical_record)).to eq(medical_record)
      end

      it "redirects to the medical_record" do
        medical_record = MedicalRecord.create! valid_attributes
        put :update, {:id => medical_record.to_param, :medical_record => valid_attributes}, valid_session
        response.should redirect_to '/yourpet/medical_record'
      end
    end

    describe "with invalid params" do
      it "assigns the medical_record as @medical_record" do
        medical_record = MedicalRecord.create! valid_attributes
        put :update, {:id => medical_record.to_param, :medical_record => invalid_attributes}, valid_session
        expect(assigns(:medical_record)).to eq(medical_record)
      end

    end
  end

  describe "DELETE destroy" do
    it "destroys the requested medical_record" do
      medical_record = MedicalRecord.create! valid_attributes
      expect {
        delete :destroy, {:id => medical_record.to_param}, valid_session
      }.to change(MedicalRecord, :count).by(-1)
    end
  end

end
