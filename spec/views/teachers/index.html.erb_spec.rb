require 'rails_helper'

RSpec.describe "teachers/index", type: :view do
  before(:each) do
    assign(:teachers, [
      Teacher.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :phone => "Phone",
        :email => "Email",
        :gender => 2
      ),
      Teacher.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :phone => "Phone",
        :email => "Email",
        :gender => 2
      )
    ])
  end

  it "renders a list of teachers" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
