class Action < ApplicationRecord
  TYPE_OF_ACTIONS = [
    "Action shot - Post", "Action shot - Saved", "Action shot - Goal", "Action shot - Missed", "Action shot - Blocked", "Action shot - Corner",
    "Center shot - Post", "Center shot - Saved", "Center shot - Goal", "Center shot - Missed", "Center shot - Blocked", "Center shot - Corner",
    "Turnover foul",
    "Steal",
    "Goal",
    "6M Direct shot in free throw - Post", "6M Direct shot in free throw - Saved", "6M Direct shot in free throw - Goal", "6M Direct shot in free throw - Missed", "6M Direct shot in free throw - Blocked", "6M Direct shot in free throw - Corner",
    "Extra player shot - Post", "Extra player shot - Saved", "Extra player shot - Goal", "Extra player shot - Missed", "Extra player shot - Blocked", "Extra player shot - Corner",
    "Counter attack - Post", "Counter attack - Saved", "Counter attack - Goal", "Counter attack - Missed", "Counter attack - Blocked", "Counter attack - Corner",
    "Turnover foul",
    "Penalty foul",
    "Steal",
    "Field exclusion",
    "Center forward position exclusion",
    "Penalty exclusion",
    "Double exclusion",
    "Counter attack situation exclusion",
    "Exclusion in 6M free throw situation",
    "Penalty shot - Post", "Penalty shot - Saved", "Penalty shot - Goal", "Penalty shot - Missed", "Penalty shot - Corner",
    "Rebound",
    "Timeout",
    "Substitution goalkeeper",
    "Technical fault - Yellow card", "Technical fault - Red card"
  ]

  belongs_to :player
  belongs_to :game
end
