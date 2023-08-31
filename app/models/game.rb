class Game < ApplicationRecord
  belongs_to :team, class_name: 'Team'
  belongs_to :opponent_team, class_name: 'Team', foreign_key: 'opponent_team_id', optional: true

  has_many :actions
  has_many :participations

  before_commit :set_opponent_team

  validates :date, :location, presence: true

  private

  def set_opponent_team
    opponent_team = Team.create!(name: 'Opponent')

    13.times do
      Player.create(name: 'Opponent', team: opponent_team)
    end

    self.opponent_team = opponent_team
    save!
  end
end
