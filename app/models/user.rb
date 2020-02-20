class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :email, presence: { message: "Required."}

  # Username "email" must be unique
  validates :email, uniqueness: { message: "That username is taken. Try another."}, :if => :email_changed?
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX, message: "Invalid email."}

  # Require a password when the account is created, but not required on edit
  validates :password, presence: true, if: -> {:new_record? || changes[:crypted_password]}

end
