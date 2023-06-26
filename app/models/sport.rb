class Sport < ApplicationRecord

  has_many :sport_branches, dependent: :destroy
  has_many :branches, through: :sport_branches

end
