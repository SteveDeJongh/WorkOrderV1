class Comment < ApplicationRecord
  belongs_to :workorder
  belongs_to :user

  has_rich_text :body
end
