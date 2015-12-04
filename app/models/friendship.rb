class Friendship < ActiveRecord::Base
    belongs_to :user
    # in the user model, add "  has_many :friendships  "
end
