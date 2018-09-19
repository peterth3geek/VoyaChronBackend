class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.integer :campaign_id
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
