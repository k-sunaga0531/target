class Targeter < ApplicationRecord
  belongs_to :group
  belongs_to :user
  validates :targeter_name, presence: true
end

