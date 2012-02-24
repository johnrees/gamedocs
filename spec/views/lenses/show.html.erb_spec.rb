require 'spec_helper'

describe "lenses/show" do
  before(:each) do
    @lens = assign(:lens, stub_model(Lens,
      :name => "Name",
      :description => "MyText",
      :q1 => "Q1",
      :q2 => "Q2",
      :q3 => "Q3",
      :q4 => "Q4",
      :q5 => "Q5"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Q1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Q2/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Q3/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Q4/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Q5/)
  end
end
