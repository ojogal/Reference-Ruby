class Question < ApplicationRecord
  validates :title, presence: :true, length: { minimum: 3, maximum: 20 }
  validates :body, presence: :true, length: { maximum: 200 }

  def format_time
    self.created_at.strftime('%Y-%m-%d %H:%M:%S')
  end
end
