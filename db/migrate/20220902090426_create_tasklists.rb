class CreateTasklists < ActiveRecord::Migration[6.1]
  def change
    create_table :tasklists do |t|
      t.string :status
      t.string :task
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
