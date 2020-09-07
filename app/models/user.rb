class User < ApplicationRecord
    has_many :user_events
    has_many :events, through: :user_events
    has_secure_password
    validates :first_name, presence: true
    validates :last_name, presence: true
    # validates :username, uniqueness: true
    validates :age, numericality: { only_integer:true, greater_than:17, less_than: 60 }
    validates :password, presence: true, confirmation: true, length: {in: 8..20}

    def full_name
        self.first_name + " " + self.last_name
    end
end
