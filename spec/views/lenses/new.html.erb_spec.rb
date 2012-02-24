require 'spec_helper'

describe "lenses/new" do
  before(:each) do
    assign(:lens, stub_model(Lens,
      :name => "MyString",
      :description => "MyText",
      :q1 => "MyString",
      :q2 => "MyString",
      :q3 => "MyString",
      :q4 => "MyString",
      :q5 => "MyString"
    ).as_new_record)
  end

  it "renders new lens form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lenses_path, :method => "post" do
      assert_select "input#lens_name", :name => "lens[name]"
      assert_select "textarea#lens_description", :name => "lens[description]"
      assert_select "input#lens_q1", :name => "lens[q1]"
      assert_select "input#lens_q2", :name => "lens[q2]"
      assert_select "input#lens_q3", :name => "lens[q3]"
      assert_select "input#lens_q4", :name => "lens[q4]"
      assert_select "input#lens_q5", :name => "lens[q5]"
    end
  end
end
