require 'spec_helper'

describe "translantions/edit" do
  before(:each) do
    @translantion = assign(:translantion, stub_model(Translantion,
      :original => "MyText",
      :translated => "MyText"
    ))
  end

  it "renders the edit translantion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", translantion_path(@translantion), "post" do
      assert_select "textarea#translantion_original[name=?]", "translantion[original]"
      assert_select "textarea#translantion_translated[name=?]", "translantion[translated]"
    end
  end
end
