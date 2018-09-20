class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :character_id
      t.integer :story_module_id
      t.string :description

      t.timestamps
    end
  end
end
