require 'rails_helper'

RSpec.describe "draftees/new", :type => :view do
  before(:each) do
    assign(:draftee, Draftee.new(
      :fan_name => "MyString",
      :img_url => "MyString",
      :fav_team => "MyString",
      :why_draft_me => "MyText",
      :fav_bose_product => "MyString",
      :user_id => 1,
      :fan_score => 1,
      :user => nil
    ))
  end

  it "renders new draftee form" do
    render

    assert_select "form[action=?][method=?]", draftees_path, "post" do

      assert_select "input#draftee_fan_name[name=?]", "draftee[fan_name]"

      assert_select "input#draftee_img_url[name=?]", "draftee[img_url]"

      assert_select "input#draftee_fav_team[name=?]", "draftee[fav_team]"

      assert_select "textarea#draftee_why_draft_me[name=?]", "draftee[why_draft_me]"

      assert_select "input#draftee_fav_bose_product[name=?]", "draftee[fav_bose_product]"

      assert_select "input#draftee_user_id[name=?]", "draftee[user_id]"

      assert_select "input#draftee_fan_score[name=?]", "draftee[fan_score]"

      assert_select "input#draftee_user_id[name=?]", "draftee[user_id]"
    end
  end
end
