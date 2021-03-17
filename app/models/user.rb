class User < ApplicationRecord
  validates :name, :phone, :status, presence: true
  validates :email, format: { with: Devise.email_regexp, message: "invalid email" }
end
