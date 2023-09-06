class PlayerAction < ApplicationRecord
  belongs_to :player
  belongs_to :game

  attr_accessor :opponent_id, :kind_extra

  TYPE_OF_ACTIONS = ['SHOT', 'TURNOVER FOUL', 'STEAL',
                     'COUNTER ATTACK', 'EXCLUSION', 'REBOUND',
                     'EXTRA PLAYER SHOT', 'PENALTY FOUL', 'DIRECT FREE THROW',
                     'DOUBLE EXCLUSION']

  POSITIONS = ['L2M', 'C2M', 'R2M', 'BACK LEFT', 'BACK CENTER', 'BACK RIGHT', 'F6M']

  # 6M Direct shot in free throw
  # Shot
  # Extra player shot
  # Counter attack
  SHOT_RESULTS = ['POST', 'SAVED', 'GOAL', 'MISSED', 'BLOCKED', 'CORNER']
end

# need to belong to the team
# "Timeout",
# "Substitution goalkeeper"
# 'Technical fault'
