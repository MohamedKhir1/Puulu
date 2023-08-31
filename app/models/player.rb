class Player < ApplicationRecord
  belongs_to :team

  has_many :actions
  has_many :participations

  # accepts_nested_attributes_for :team, :update_only => true

  # has_one_attached :photo
  validates :name, presence: true
end
