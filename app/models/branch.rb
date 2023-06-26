class Branch < ApplicationRecord

  has_many :sport_branches, dependent: :destroy
  has_many :sports, through: :sport_branches

end
