class PlayerAction < ApplicationRecord
  belongs_to :player
  belongs_to :game

  TYPE_OF_ACTIONS =  ['Shot', 'Turnover foul', 'Steal', '6M Direct shot in free throw',
                      'Extra player shot', 'Counter attack', 'Penalty foul', 'Exclusion',
                      'Double exclusion', 'Rebound']

  POSITION = ['L2M', 'C2M', 'R2M', 'Back LEFT', 'Back CENTER', 'Back RIGHT', 'F6M']

  # 6M Direct shot in free throw
  # Shot
  # Extra player shot
  # Counter attack
  SHOT_RESULT = ['Post', 'Saved', 'Goal', 'Missed', 'Blocked', 'Corner']
end

# need to belong to the team
# "Timeout",
# "Substitution goalkeeper"
# 'Technical fault'
