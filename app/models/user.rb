class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  enum role: [:student, :teacher]

  has_many :learnings, dependent: :destroy
  has_secure_password

  attr_accessor :remember_token

  validates :name, :email, :password, presence: true
  validates :email, uniqueness: {case_sensitive: false}
  validates :email, format: {with: VALID_EMAIL_REGEX}

  before_save :downcase_email

  def authenticated? attribute, token
    digest = send "#{attribute}_digest"
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password? token
  end

  def remember
    self.remember_token = User.new_token
    update_attributes remember_digest: User.digest(remember_token)
  end

  def forget
    update_attributes remember_digest: User.digest(remember_token)
  end

  def learning? course
    self.learnings.find_by course_id: course.id
  end

  class << self
    def digest string
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
        BCrypt::Engine.cost
      BCrypt::Password.create string, cost: cost
    end

    def new_token
      SecureRandom.urlsafe_base64
    end
  end

  private

  def downcase_email
    self.email.downcase!
  end
end
