class Event < ApplicationRecord
  has_many :event_users
  belongs_to :creator, class_name: 'User'
end
