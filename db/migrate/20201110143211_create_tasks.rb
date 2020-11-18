class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.datetime :create_date
      t.datetime :completion_date
      t.datetime :deadline
      t.boolean :status
      t.string :memo
      t.references :user

      t.timestamps
    end
  end
end
