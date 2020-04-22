class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: {in: 1..15}
    validates :email, presence: true, uniqueness: { case_sensitive: false }, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP}
    validates :password, presence: true, length: { minimum: 6 }
end
