class Comment < ApplicationRecord
  validates :name, presence: true
  validates :photo_id, presence: true
  validates :content, presence: true 
  validates :content , presence: true, length: { maximum: 140 }    
  belongs_to :photo, dependent: :destroy
  default_scope ->{order(created_at: :desc)}    
end
