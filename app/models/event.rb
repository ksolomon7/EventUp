class Event < ApplicationRecord
  belongs_to :group
  has_many :user_events
  has_many :users, through: :user_events

  validates :name, presence: true
  validates :venue, presence: true
end
