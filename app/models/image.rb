class Image < ApplicationRecord
	mount_uploader :image, PhotoUploader

	belongs_to :user
end
