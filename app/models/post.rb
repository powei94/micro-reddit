class Post < ApplicationRecord
    validates :title, presence: true
    validates :link, length: { maximum: 1000 }
    validates :body, length: { maximum: 20000 }

    belongs_to :user
end
