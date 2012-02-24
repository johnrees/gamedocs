require 'spec_helper'

describe "lenses/index" do
  before(:each) do
    assign(:lenses, [
      stub_model(Lens,
        :name => "Name",
        :description => "MyText",
        :q1 => "Q1",
        :q2 => "Q2",
        :q3 => "Q3",
        :q4 => "Q4",
        :q5 => "Q5"
      ),
      stub_model(Lens,
        :name => "Name",
        :description => "MyText",
        :q1 => "Q1",
        :q2 => "Q2",
        :q3 => "Q3",
        :q4 => "Q4",
        :q5 => "Q5"
      )
    ])
  end

  it "renders a list of lenses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Q1".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Q2".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Q3".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Q4".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Q5".to_s, :count => 2
  end
end
