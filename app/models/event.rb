class Event < ActiveRecord::Base
  has_event_calendar
  has_one :image_gallery
end
