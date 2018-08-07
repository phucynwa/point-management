class SendEmailJob < ApplicationJob
  queue_as :default

  def perform learning
    @learning = learning
    LearningMailer.notice_point(@learning).deliver_now
  end
end
