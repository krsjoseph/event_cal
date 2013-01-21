require 'event_calendar/calendar_helper'

module EventCalendar
  module Rails
    class Engine < ::Rails::Engine
      initializer 'event_calendar.setup_view_helpers' do |app|
        app.config.to_prepare do
          ActionController::Base.send(:helper, ::EventCalendar::CalendarHelper)
        end
      end
    end
  end
end