class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :character_id
      t.string :description
      t.integer :story_id

      t.timestamps
    end
  end
end
