module ApplicationHelper
  def full_title page_title
    base_title = "Point Management"
    if page_title.blank?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def safe_keyword keyword
    keyword&.gsub(/[!@%&'" +-]/,'%')
  end
end
