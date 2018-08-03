class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  enum role: [:student, :teacher]

  has_many :learning, dependent: :destroy
  has_secure_password

  validates :name, :phone, :email, :password, presence: true

  before_save :downcase_email

  private

  def downcase_email
    self.email.downcase!
  end
end
