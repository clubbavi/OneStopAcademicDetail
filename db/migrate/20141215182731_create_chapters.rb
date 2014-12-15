class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :name
      t.string :description
      t.integer :syllabus_id

      t.timestamps
    end
  end
end
