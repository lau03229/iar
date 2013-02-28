class Publication < ActiveRecord::Base
  attr_accessible :description, :title, :image, :file

  validates :title, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 150 }
  validates :image, presence: true
  validates :file, presence: true

  mount_uploader :image, ImageUploader
  mount_uploader :file, ImageUploader
end