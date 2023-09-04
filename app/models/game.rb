class Game < ApplicationRecord
  belongs_to :team, class_name: 'Team'
  belongs_to :opponent_team, class_name: 'Team', foreign_key: 'opponent_team_id', optional: true

  has_many :actions, dependent: :destroy
  has_many :participations, dependent: :destroy

  after_create :set_opponent_team

  validates :date, :location, presence: true

  private

  def set_opponent_team
    opponent_team = Team.create!(name: generate_opponent_team_name)

    13.times do
      # validates :name, :birthdate, :gender, :position, presence: true
      Player.create(name: 'Opponent', birthdate: rand(1900..2005), gender: 'Male',
                    position: 'Field Player', team: opponent_team)
    end

    self.opponent_team = opponent_team
    save!
  end

  def generate_opponent_team_name
    "opponent-#{SecureRandom.hex(5)}"
  end
end
