class Interest < ApplicationRecord
    has_many :group_interests
    has_many :groups, through: :group_interests
    validates :name, presence: true
    validates :description, presence: true
end
