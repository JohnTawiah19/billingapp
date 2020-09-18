class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :company
      t.date :date
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
