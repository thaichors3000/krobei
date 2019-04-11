require 'rails_helper'

RSpec.describe "teachers/new", type: :view do
  before(:each) do
    assign(:teacher, Teacher.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :gender => 1
    ))
  end

  it "renders new teacher form" do
    render

    assert_select "form[action=?][method=?]", teachers_path, "post" do

      assert_select "input[name=?]", "teacher[first_name]"

      assert_select "input[name=?]", "teacher[last_name]"

      assert_select "input[name=?]", "teacher[phone]"

      assert_select "input[name=?]", "teacher[email]"

      assert_select "input[name=?]", "teacher[gender]"
    end
  end
end
