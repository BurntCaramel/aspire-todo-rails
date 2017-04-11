module TodoItemsHelper
  def completed_at_ago(item)
    if item.completed_at.present?
      "#{time_ago_in_words item.completed_at} ago"
    else
      "no"
    end
  end
end
