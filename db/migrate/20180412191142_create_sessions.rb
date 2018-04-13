class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.text :program, null: false
      t.date :session_date, null: false
      t.integer :session_rating, null: false
      t.text :helm, null: false
      t.text :crew
      t.text :wind_dir
      t.integer :wind_strength
      t.text :chop
      t.text :objective_1, null: false
      t.text :objective_2
      t.text :objective_3
      t.text :objective_4
      t.text :objective_5
      t.text :session_report, null: false
      t.boolean :boat_maint, null: false
      t.text :boat_maint_info

      t.timestamps
    end
  end
end
