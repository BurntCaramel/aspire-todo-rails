class CreateTodoItems < ActiveRecord::Migration[5.0]
  def change
    create_table :todo_items do |t|
      t.string :title, null: false, default: ''
      t.timestamp :completed_at, null: true

      t.timestamps
    end
  end
end
