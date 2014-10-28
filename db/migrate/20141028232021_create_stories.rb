class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :body
      t.references :place, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
