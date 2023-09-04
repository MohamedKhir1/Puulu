class PlayerAction < ApplicationRecord
  belongs_to :player
  belongs_to :game

  POSITION = ['L2M', 'C2M', 'R2M', 'Back left', 'Back center', 'Back right', 'F6M']

  TYPE_OF_ACTIONS =  [
    "Action shot", "Center shot", "Turnover foul",
    "Steal", "Goal", "6M Direct shot in free throw",
    "Extra player shot", "Counter attack", "Turnover
    foul", "Penalty foul", "Steal", "Field exclusion",
    "Center forward position exclusion", "Penalty exclusion",
    "Double exclusion", "Counter attack situation exclusion",
    "Exclusion in 6M free throw situation", "Rebound",
    "Timeout", "Substitution goalkeeper", "Technical fault"
  ]

  RESULT = ['post', 'saved', 'goal', 'missed', 'blocked', 'corner']

  RESULT_PER_KIND = {
    "Action shot"                  => %w[post saved goal missed blocked corner],
    "Center shot"                  => %w[post saved goal missed blocked corner],
    "6M Direct shot in free throw" => %w[post saved goal missed blocked corner],
    "Extra player shot"            => %w[post saved goal missed blocked corner],
    "Counter attack"               => %w[post saved goal missed blocked corner],
    "Penalty shot"                 => %w[post saved goal missed corner],
    "Technical fault"              => ["Yellow card", "Red card"]
  }
end
