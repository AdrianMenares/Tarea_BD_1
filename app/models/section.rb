class Section < ApplicationRecord
  belongs_to :user_id
  has_many :posts, dependent: :destroy
end
