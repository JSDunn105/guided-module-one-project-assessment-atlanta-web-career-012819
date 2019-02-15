class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.date  :release_dt
      t.date :sunset_dt
    end
  end
end
