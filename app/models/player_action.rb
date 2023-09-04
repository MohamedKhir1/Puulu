class PlayerAction < ApplicationRecord
  belongs_to :player
  belongs_to :game

  KIND = %w[shot steal]
  POSITION = ['L2M', 'C2M', 'R2M', 'Back left', 'Back center', 'Back right', 'F6M']
  RESULT = ['post', 'saved', 'goal', 'missed', 'blocked', 'corner']
end
