class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
  has_many :draftees

 def admin?
  admin == true
 end
end
