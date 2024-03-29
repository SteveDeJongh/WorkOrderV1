class Workorder < ApplicationRecord
  belongs_to :user

  has_many :comments, dependent: :destroy #comments will be destoyed if WO is deleted.
end
