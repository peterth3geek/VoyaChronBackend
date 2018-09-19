class CreateStoryModules < ActiveRecord::Migration[5.2]
  def change
    create_table :story_modules do |t|
      t.integer :chapter_id
      t.string :title
      t.string :description
      t.integer :location_id

      t.timestamps
    end
  end
end
