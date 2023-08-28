class Team < ApplicationRecord
  belongs_to :user

  has_many :team_games, class_name: 'Game', foreign_key: 'team_id'
  has_many :opponent_team_games, class_name: 'Game', foreign_key: 'opponent_team_id'
  has_many :players

  # has_one_attached :photo
end
