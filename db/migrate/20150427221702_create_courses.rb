class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :user_id
      t.string :name
      t.string :instructor

      t.timestamps
    end
  end
end
