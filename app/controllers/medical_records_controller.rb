class MedicalRecordsController < ApplicationController
  before_filter :set_medical_record, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def show
    respond_with(@medical_record)
  end


  def edit
  end

  def update
    @medical_record.update_attributes(params[:medical_record])
    redirect_to medical_record_path
  end

  def destroy
    @medical_record.destroy
    redirect_to yourpet_sign_in_path
  end

  private
    def set_medical_record
      @medical_record = MedicalRecord.where("pet_id = ?", session[:pet_id]).first_or_create do |newMedRecord|
          newMedRecord.pet_id = session[:pet_id]
      end
    end
  end
