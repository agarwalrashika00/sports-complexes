class PlayerSport < ApplicationRecord

  belongs_to :player, class_name: 'User'
  belongs_to :sport_branch

  validates :player_id, uniqueness: { scope: :sport_branch_id }
  validates :player_id, uniqueness: { scope: :batch_time }, if: :current_month?

  before_validation :set_as_current_month, on: :create

  private

  def set_as_current_month
    self.current_month = true
  end

end
