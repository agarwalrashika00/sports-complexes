class SportBranch < ApplicationRecord

  belongs_to :sport
  belongs_to :branch

  validates :sport_id, uniqueness: { scope: :branch_id }

end
