module UsersHelper
  def gravatar_for user, size: 80
    gravatar_id = Digest::MD5::hexdigest user.email.downcase
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag gravatar_url, alt: user.name, class: "gravatar"
  end

  def avg_point learnings
    sum_point = 0
    sum_credits = 0
    learnings.each do |learning|
      if learning.summary_point
        sum_point += learning.summary_point * learning.lecture.credits
        sum_credits += learning.lecture.credits
      end
    end
    return 0 if sum_credits == 0
    sum_point / sum_credits
  end

  def sum_credits user
    sum_credits = 0
    user.learnings.each do |learning|
      sum_credits += learning.lecture.credits
    end
    sum_credits
  end
end
