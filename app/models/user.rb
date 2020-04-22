class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: { maximum: 15 }
    validates :email, presence: true, uniqueness: { case_sensitive: false }, format: {with: URI::MailTo::EMAIL_REGEXP}
    validates :password, presence: true, length: { minimum: 6 }

    has_many :posts
    has_many :comments
end
