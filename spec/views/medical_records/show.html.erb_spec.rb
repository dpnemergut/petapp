require 'rails_helper'

RSpec.describe "medicalrecords/show", :type => :view do
  before(:each) do
    @medical_record = assign(:medical_record, MedicalRecord.create!(
      :pet_id => 1,
      :conditions => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
