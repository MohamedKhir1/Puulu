class Team < ApplicationRecord
  include Abyme::Model

  belongs_to :user, optional: true

  has_many :players, inverse_of: :team
  has_many :team_games, class_name: 'Game', foreign_key: 'team_id'
  has_many :opponent_team_games, class_name: 'Game', foreign_key: 'opponent_team_id'

  validates :name, presence: true, uniqueness: true

  abymize :players
end
