class Event < ApplicationRecord
  has_many :event_users
  belongs_to :creator, class_name: 'User'
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
