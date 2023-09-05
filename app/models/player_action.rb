class PlayerAction < ApplicationRecord
  belongs_to :player
  belongs_to :game

  TYPE_OF_ACTIONS = ["Shot", "Turnover foul", "Steal", "6M Direct shot in free throw",
                    "Extra player shot", "Counter attack", "Penalty foul","Penalty shot" "Exclusion",
                    "Double exclusion", "Rebound"]

  POSITION = ['L2M', 'C2M', 'R2M', 'Back left', 'Back center', 'Back right', 'F6M']


  # 6M Direct shot in free throw
  # Shot
  # Extra player shot
  # Counter attack
  SHOT_RESULT = ['post', 'saved', 'goal', 'missed', 'blocked', 'corner']

  # Exclusion
  EXCLUSION_RESULT = ['Centre forward position exclusion', 'Field exclusion', 'Counter attack situation exclusion', 'Exclusion in 6M free throw situation']


# need to belong to the team
# "Timeout",
# "Substitution goalkeeper"
# "Technical fault"