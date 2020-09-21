require 'test_helper'

class TimesheetTest < ActiveSupport::TestCase
  test "timesheet has firstname" do
    timesheet = Timesheet.new
    assert timesheet.projects.firstname 'timesheet has firstname'
  end
  
end
