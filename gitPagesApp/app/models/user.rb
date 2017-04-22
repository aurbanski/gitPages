class User < ApplicationRecord
  has_secure_password
  # def password=(password)
  #   self.password_digest = BCrypt::Password.create(password)
  # end
end
