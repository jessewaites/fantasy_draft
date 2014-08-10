# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :draftee do
    fan_name "MyString"
    img_url "MyString"
    fav_team "MyString"
    why_draft_me "MyText"
    fav_bose_product "MyString"
    user_id 1
    fan_score 1
    user nil
  end
end
