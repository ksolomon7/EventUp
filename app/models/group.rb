class Group < ApplicationRecord
    has_many :events
    has_many :group_interests
    has_many :interests, through: :group_interests

    validates :name, presence: true

end
