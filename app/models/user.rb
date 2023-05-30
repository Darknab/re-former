class User < ApplicationRecord
    validates :username, presence: true, format: { with: /\A[a-zA-Z]+\z/,
        message: "only allows letters" }, length: {minimum: 4}
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: {in: 6..20}
end
