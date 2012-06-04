class CreatePlanners < ActiveRecord::Migration
  def self.up
    create_table :planners do |t|
      t.string :day
      t.time :start_time
      t.integer :tv_show_id

      t.timestamps
    end
  end

  def self.down
    drop_table :planners
  end
end
