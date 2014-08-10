require 'rails_helper'

RSpec.describe "draftees/index", :type => :view do
  before(:each) do
    assign(:draftees, [
      Draftee.create!(
        :fan_name => "Fan Name",
        :img_url => "Img Url",
        :fav_team => "Fav Team",
        :why_draft_me => "MyText",
        :fav_bose_product => "Fav Bose Product",
        :user_id => 1,
        :fan_score => 2,
        :user => nil
      ),
      Draftee.create!(
        :fan_name => "Fan Name",
        :img_url => "Img Url",
        :fav_team => "Fav Team",
        :why_draft_me => "MyText",
        :fav_bose_product => "Fav Bose Product",
        :user_id => 1,
        :fan_score => 2,
        :user => nil
      )
    ])
  end

  it "renders a list of draftees" do
    render
    assert_select "tr>td", :text => "Fan Name".to_s, :count => 2
    assert_select "tr>td", :text => "Img Url".to_s, :count => 2
    assert_select "tr>td", :text => "Fav Team".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Fav Bose Product".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
