class Player < ApplicationRecord
  belongs_to :team

  has_many :actions
  has_many :participations

  # has_one_attached :photo

  validates :name, :birthdate, :gender, :position, presence: true
end
