class User < ApplicationRecord

  has_many :player_sports, foreign_key: :player_id
  has_many :sport_branches, through: :player_sports
  has_many :sports, through: :sport_branches
  has_many :branches, through: :sport_branches

end
