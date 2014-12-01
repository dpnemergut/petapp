require 'rails_helper'

RSpec.describe "medical_records/index", :type => :view do
  before(:each) do
    assign(:medical_records, [
      MedicalRecord.create!(
        :pet_id => 1,
        :conditions => "MyText"
      ),
      MedicalRecord.create!(
        :pet_id => 1,
        :conditions => "MyText"
      )
    ])
  end

  it "renders a list of medical_records" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
