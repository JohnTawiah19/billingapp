class CreateTimesheets < ActiveRecord::Migration[6.0]
  def change
    create_table :timesheets do |t|
      t.string :firstname
      t.string :lastname
      t.integer :billing_rate

      t.timestamps
    end
  end
end
