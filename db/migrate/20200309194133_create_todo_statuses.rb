class CreateTodoStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :todo_statuses do |t|
      t.string :lank
      t.string :star
      t.string :deadLine

      t.timestamps
    end
  end
end
