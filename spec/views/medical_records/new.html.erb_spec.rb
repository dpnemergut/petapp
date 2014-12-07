require 'rails_helper'

RSpec.describe "medical_records/new", :type => :view do
  before(:each) do
    assign(:medical_record, MedicalRecord.new(
      :pet_id => 1,
      :conditions => "MyText"
    ))
  end

  it "renders new medical_record form" do
    render

    assert_select "form[action=?][method=?]", medical_records_path, "post" do

      assert_select "input#medical_record_pet_id[name=?]", "medical_record[pet_id]"

      assert_select "textarea#medical_record_conditions[name=?]", "medical_record[conditions]"
    end
  end
end
