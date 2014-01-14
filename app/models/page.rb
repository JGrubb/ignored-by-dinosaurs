class Page < ActiveRecord::Base
  mount_uploader :banner, BannerUploader

  extend FriendlyId

  friendly_id :title, use: :slugged
end
