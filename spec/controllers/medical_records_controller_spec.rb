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
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MedicalRecordsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all medical_records as @medical_records" do
      medical_record = MedicalRecord.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:medical_records)).to eq([medical_record])
    end
  end

  describe "GET show" do
    it "assigns the requested medical_record as @medical_record" do
      medical_record = MedicalRecord.create! valid_attributes
      get :show, {:id => medical_record.to_param}, valid_session
      expect(assigns(:medical_record)).to eq(medical_record)
    end
  end

  describe "GET new" do
    it "assigns a new medical_record as @medical_record" do
      get :new, {}, valid_session
      expect(assigns(:medical_record)).to be_a_new(MedicalRecord)
    end
  end

  describe "GET edit" do
    it "assigns the requested medical_record as @medical_record" do
      medical_record = MedicalRecord.create! valid_attributes
      get :edit, {:id => medical_record.to_param}, valid_session
      expect(assigns(:medical_record)).to eq(medical_record)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new MedicalRecord" do
        expect {
          post :create, {:medical_record => valid_attributes}, valid_session
        }.to change(MedicalRecord, :count).by(1)
      end

      it "assigns a newly created medical_record as @medical_record" do
        post :create, {:medical_record => valid_attributes}, valid_session
        expect(assigns(:medical_record)).to be_a(MedicalRecord)
        expect(assigns(:medical_record)).to be_persisted
      end

      it "redirects to the created medical_record" do
        post :create, {:medical_record => valid_attributes}, valid_session
        expect(response).to redirect_to(MedicalRecord.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved medical_record as @medical_record" do
        post :create, {:medical_record => invalid_attributes}, valid_session
        expect(assigns(:medical_record)).to be_a_new(MedicalRecord)
      end

      it "re-renders the 'new' template" do
        post :create, {:medical_record => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested medical_record" do
        medical_record = MedicalRecord.create! valid_attributes
        put :update, {:id => medical_record.to_param, :medical_record => new_attributes}, valid_session
        medical_record.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested medical_record as @medical_record" do
        medical_record = MedicalRecord.create! valid_attributes
        put :update, {:id => medical_record.to_param, :medical_record => valid_attributes}, valid_session
        expect(assigns(:medical_record)).to eq(medical_record)
      end

      it "redirects to the medical_record" do
        medical_record = MedicalRecord.create! valid_attributes
        put :update, {:id => medical_record.to_param, :medical_record => valid_attributes}, valid_session
        expect(response).to redirect_to(medical_record)
      end
    end

    describe "with invalid params" do
      it "assigns the medical_record as @medical_record" do
        medical_record = MedicalRecord.create! valid_attributes
        put :update, {:id => medical_record.to_param, :medical_record => invalid_attributes}, valid_session
        expect(assigns(:medical_record)).to eq(medical_record)
      end

      it "re-renders the 'edit' template" do
        medical_record = MedicalRecord.create! valid_attributes
        put :update, {:id => medical_record.to_param, :medical_record => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
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

    it "redirects to the medical_records list" do
      medical_record = MedicalRecord.create! valid_attributes
      delete :destroy, {:id => medical_record.to_param}, valid_session
      expect(response).to redirect_to(medical_records_url)
    end
  end

end
