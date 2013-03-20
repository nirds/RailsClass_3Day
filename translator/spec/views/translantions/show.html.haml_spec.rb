require 'spec_helper'

describe "translantions/show" do
  before(:each) do
    @translantion = assign(:translantion, stub_model(Translantion,
      :original => "MyText",
      :translated => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
