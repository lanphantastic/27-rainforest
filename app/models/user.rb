class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true
  # with has_secure_password, the following validations are added automatically: password must be present on creation, password length should be <= 72 characters, and confirmation of password (using a password_confirmation attribute)

  # NOTE: has_secure_password and validates are methods
end
