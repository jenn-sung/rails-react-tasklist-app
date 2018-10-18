class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.string :due_date
      t.boolean :completed

      t.timestamps
    end
  end
end
