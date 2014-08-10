class Draftee < ActiveRecord::Base
  belongs_to :user




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
