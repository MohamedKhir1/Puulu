class PlayerAction < ApplicationRecord
  belongs_to :player
  belongs_to :game
  has_one :team, through: :player

  attr_accessor :opponent_id, :kind_extra

  after_commit :set_score, on: :create

  TYPE_OF_ACTIONS = ['Shot', 'Turnover foul', 'Steal',
                     'Counter attack', 'Exclusion', 'Rebound',
                     'Extra player shot', 'Penalty foul', 'Direct free throw',
                     'Double exclusion', 'Penalty shot']

  POSITIONS = ['L2M', 'C2M', 'R2M', 'BACK LEFT', 'BACK CENTER', 'BACK RIGHT', 'F6M']

  # 6M Direct shot in free throw
  # Shot
  # Extra player shot
  # Counter attack
  SHOT_RESULTS = ['Post', 'Saved', 'Goal', 'Missed', 'Blocked', 'Corner']

  RESULT_PER_KIND = {
    "Shot"                         => %w[post saved goal missed blocked corner],
    "Direct free throw"            => %w[post saved goal missed blocked corner],
    "Extra player shot"            => %w[post saved goal missed blocked corner],
    "Counter attack"               => %w[post saved goal missed blocked corner],
    "Penalty shot"                 => %w[post saved goal missed corner]
  }

  def goal?
    kind == "goal"
  end

  private

  def set_score
    # 1. Je récupère l'instance de game qui est lié au player_action (self)
    action_game = self.game
    # 2. Je crée une condition qui dit : si mon action est un goal, je prends l'équipe à laquelle il appartient
    if self.goal?
      if self.team == action_game.team
        action_game.update(result: action_game.result += 1)
      else
        action_game.update(opponent_result: action_game.opponent_result += 1)
      end
    end
    # 3. j'incremente de 1 :
    # 3.a le game.result si le goal provient de la team
    # 3.b le game.opponent_result si le gaol provient de l'opponent_team
    # 4. je sauve le game
  end

  # need to belong to the team
  # "Timeout",
  # "Substitution goalkeeper"
  # "Technical fault"
end
