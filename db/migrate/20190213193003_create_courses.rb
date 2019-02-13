class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.integer :course_nbr
      t.string :title
      t.date  :release_dt
      t.boolean :active
    end
  end
end
