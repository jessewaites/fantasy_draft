require 'rails_helper'

RSpec.describe "draftees/show", :type => :view do
  before(:each) do
    @draftee = assign(:draftee, Draftee.create!(
      :fan_name => "Fan Name",
      :img_url => "Img Url",
      :fav_team => "Fav Team",
      :why_draft_me => "MyText",
      :fav_bose_product => "Fav Bose Product",
      :user_id => 1,
      :fan_score => 2,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Fan Name/)
    expect(rendered).to match(/Img Url/)
    expect(rendered).to match(/Fav Team/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Fav Bose Product/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
