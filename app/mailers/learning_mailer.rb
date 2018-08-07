class LearningMailer < ApplicationMailer
  def notice_point learning
    @learning = learning
    mail(to: @learning.user.email, subject: "Points of #{@learning.course.name} already updated !")
  end
end
