class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :category, array: true, default: []

      t.timestamps
    end
  end
end
