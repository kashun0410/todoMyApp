class CreateTodoLists < ActiveRecord::Migration[5.0]
  def change
    create_table :todo_lists do |t|
      t.text :title
      t.text :content
      t.string :star
      t.string :lank
      t.integer :d_line

      t.timestamps
    end
  end
end
