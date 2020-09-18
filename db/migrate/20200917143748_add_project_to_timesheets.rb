class AddProjectToTimesheets < ActiveRecord::Migration[6.0]
  def change
    add_reference :projects, :timesheet, null: false, foreign_key: true
  end
end
