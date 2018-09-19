class AddNpCtoCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :npc, :boolean
  end
end
