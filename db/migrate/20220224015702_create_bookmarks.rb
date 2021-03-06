class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.string :comment

      t.timestamps
      t.references :movie, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true
    end
  end
end
