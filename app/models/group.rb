class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  has_many :targeters
  validates :group_name, presence: true, uniqueness: true


  # def show_currentuser_targeter_name
  #   if (currentuser_targeter_name = targeter_.currentuser).present?
  #     current_user_targeter_name.targeter_name
  #   else
  #     'まだメッセージはありません。'
  #   end
  # end

end
