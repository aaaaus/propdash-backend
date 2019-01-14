class User < ApplicationRecord
  has_secure_password #comes from ActiveModel, in lieu of using our own User#authenticate methods
  validates :username, uniqueness: { case_sensitive: false }
end
