class Photo < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :user_id, presence: true
  validates_presence_of :user_id 
  validates_presence_of :img    
  mount_uploader :img, ImgUploader    
  default_scope ->{order(created_at: :desc)}
  validates_integrity_of :img
  validates :img, presence: true       
end
