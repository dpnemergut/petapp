require 'rails_helper'

RSpec.describe "medical_records/edit", :type => :view do
  before(:each) do
    @medical_record = assign(:medical_record, MedicalRecord.create!(
      :pet_id => 1,
      :conditions => "MyText"
    ))
  end

  it "renders the edit medical_record form" do
    render

    assert_select "form[action=?][method=?]", medical_record_path(@medical_record), "post" do

      assert_select "textarea#medical_record_conditions[name=?]", "medical_record[conditions]"
    end
  end
end
