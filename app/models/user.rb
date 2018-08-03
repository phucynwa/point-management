class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  enum role: [:student, :teacher]

  has_many :learning, dependent: :destroy
  has_secure_password

  validates :name, :email, :code, :password, presence: true
  validates :email, :code, uniqueness: {case_sensitive: false}
  validates :email, format: {with: VALID_EMAIL_REGEX}

  before_save :downcase_email

  private

  def downcase_email
    self.email.downcase!
  end
end
