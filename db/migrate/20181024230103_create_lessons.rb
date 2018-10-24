class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :body
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
