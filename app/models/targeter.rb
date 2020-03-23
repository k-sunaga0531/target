class Targeter < ApplicationRecord
  belongs_to :group
  belongs_to :user
  validates :targeter_name, presence: true
  # validates :counts, presence: true

end

