class Event < ActiveRecord::Base
  has_event_calendar
  attr_accessible :name, :description, :all_day, :start_at, :end_at
end
