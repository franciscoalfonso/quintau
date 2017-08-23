class Image < ApplicationRecord
    validates :user_id_id, presence: true
  mount_uploader :img, ImgUploader
  belongs_to :user
end
