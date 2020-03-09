class TodoList < ApplicationRecord
  has_many :todo_statuses
  belongs_to :user

  validates :title, :content, presence: true
end
