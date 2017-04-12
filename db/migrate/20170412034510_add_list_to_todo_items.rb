class AddListToTodoItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :todo_items, :list, foreign_key: true

    reversible do |dir|
      dir.up do
        list = List.create(title: 'Unorganized')
        TodoItem.reset_column_information
        TodoItem.update_all(list_id: list.id)
      end

      dir.down do
        TodoItem.reset_column_information
        TodoItem.update_all(list_id: nil)
        List.where(title: 'Unorganized').destroy_all
      end
    end
  end
end
