class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.text :category, array: true, default: []

      t.timestamps
    end
  end
end
