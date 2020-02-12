class Todo_list < ApplicationRecord

  belongs_to :user
  belongs_to :group

end