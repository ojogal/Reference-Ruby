class Question < ApplicationRecord
  validates :title, presence :true, length: { minimum: 3, maximum: 20 }
  validates :body, presence :true, length: { maximum: 200 }
end
