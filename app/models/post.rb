class Post < ApplicationRecord
  belongs_to :user
  validates :title, length: { minimum: 3, maximum: 20 }
  validates :body, length: { minimum: 3, maximum: 100 }
end
