require 'spec_helper'

describe "translantions/new" do
  before(:each) do
    assign(:translantion, stub_model(Translantion,
      :original => "MyText",
      :translated => "MyText"
    ).as_new_record)
  end

  it "renders new translantion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", translantions_path, "post" do
      assert_select "textarea#translantion_original[name=?]", "translantion[original]"
      assert_select "textarea#translantion_translated[name=?]", "translantion[translated]"
    end
  end
end
