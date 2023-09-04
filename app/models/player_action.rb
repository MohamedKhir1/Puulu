class PlayerAction < ApplicationRecord
  belongs_to :player
  belongs_to :game

  KIND = %w[shot steal]
  POSITION = ['back center', 'back left']
  RESULT = ['post', 'saved', 'goal', 'missed', 'blocked', 'corner']
end
