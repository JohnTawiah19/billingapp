class CreateJoinTableTimesheetsProjects < ActiveRecord::Migration[6.0]
  def change
    create_join_table :timesheets, :projects do |t|
      # t.index [:timesheet_id, :project_id]
      # t.index [:project_id, :timesheet_id]
    end
  end
end
