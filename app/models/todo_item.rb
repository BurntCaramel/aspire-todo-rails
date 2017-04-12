class TodoItem < ApplicationRecord
  belongs_to :list

  def completed
    completed_at.present?
  end

  def completed=(input)
    completed = ActiveRecord::Type::Boolean.new.deserialize(input)
    if completed
      self.completed_at = Time.current unless completed_at.present?
    else
      self.completed_at = nil
    end
  end
end
