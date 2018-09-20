class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.string :title
      t.string :description
      t.integer :campaign_id

      t.timestamps
    end
  end
end
