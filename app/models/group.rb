class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  has_many :targeters
  validates :group_name, presence: true, uniqueness: true
end