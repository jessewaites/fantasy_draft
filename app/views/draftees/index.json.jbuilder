json.array!(@draftees) do |draftee|
  json.extract! draftee, :id, :fan_name, :img_url, :fav_team, :why_draft_me, :fav_bose_product, :user_id, :fan_score, :user_id
  json.url draftee_url(draftee, format: :json)
end
