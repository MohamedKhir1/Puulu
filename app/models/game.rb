class Game < ApplicationRecord
  belongs_to :team, class_name: 'Team'
  belongs_to :opponent_team, class_name: 'Team', foreign_key: 'opponent_team_id', optional: true

  has_many :player_actions, dependent: :destroy
  has_many :participations, dependent: :destroy

  after_create :set_opponent_team

  validates :date, :location, presence: true

  def players
    Player.where(team_id: [team_id, opponent_team_id])
  end

  private

  def set_opponent_team
    opponent_team = Team.create!(name: generate_opponent_team_name)

    13.times do
      # validates :name, :birthdate, :gender, :position, presence: true
      Player.create(name: 'Opponent', birthdate: rand(1900..2005), gender: 'Male',
                    position: 'FP', team: opponent_team)
    end

    self.opponent_team = opponent_team
    save!
  end

  def generate_opponent_team_name
    # "opponent-#{SecureRandom.hex(5)}"
    ['Olympic Nice Natation', 'Cercle 93', 'Stade de Reims Natation', 'Taverny SN 95', 'Montpellier Water Polo', 'Team Strasbourg'].sample
  end
end
