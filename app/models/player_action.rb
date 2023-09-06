class PlayerAction < ApplicationRecord
  belongs_to :player
  belongs_to :game

  attr_accessor :opponent_id, :kind_extra

  TYPE_OF_ACTIONS = ['Shot', 'Turnover foul', 'Steal',
                     'Counter attack', 'Exclusion', 'Rebound',
                     'Extra player shot', 'Penalty foul', 'Direct free throw',
                     'Double exclusion']

  POSITIONS = ['L2M', 'C2M', 'R2M', 'BACK LEFT', 'BACK CENTER', 'BACK RIGHT', 'F6M']

  # 6M Direct shot in free throw
  # Shot
  # Extra player shot
  # Counter attack
  SHOT_RESULTS = ['Post', 'Saved', 'Goal', 'Missed', 'Blocked', 'Corner']
end

# need to belong to the team
# "Timeout",
# "Substitution goalkeeper"
# 'Technical fault'
