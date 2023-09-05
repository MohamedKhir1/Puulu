class PlayerAction < ApplicationRecord
  belongs_to :player
  belongs_to :game

  POSITION = ['L2M', 'C2M', 'R2M', 'BACK LEFT', 'BACK CENTER', 'BACK RIGHT', 'F6M']
  RESULT = ['post', 'saved', 'goal', 'missed', 'blocked', 'corner']
  TYPE_OF_ACTIONS = ["Action shot", "Center shot", "Turnover foul",
                     "Steal", "Goal", "6M Direct shot in free throw",
                     "Extra player shot", "Counter attack", "Turnover
                     foul", "Penalty foul", "Steal", "Field exclusion",
                     "Center forward position exclusion", "Penalty exclusion",
                     "Double exclusion", "Counter attack situation exclusion",
                     "Exclusion in 6M free throw situation", "Rebound",
                     "Timeout", "Substitution goalkeeper", "Technical fault"]
end
