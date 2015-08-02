class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :type
      t.date :date
      t.integer :time
      t.string :mood

      t.timestamps null: false
    end
  end
end
