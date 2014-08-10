class Draftee < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :fan_name
  validates_presence_of :img_url
  validates_presence_of :fav_team
  validates_presence_of :why_draft_me
  validates_presence_of :fav_bose_product
  validates_presence_of :fan_score

  def draft(user_id)
    self.drafted = true
    self.user_id = user_id
    self.save
  end

  def undraft
    self.drafted = false
    self.user_id = nil
    self.save
  end
end
