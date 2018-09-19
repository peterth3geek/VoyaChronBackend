class CreateCharacterStatsDnD5es < ActiveRecord::Migration[5.2]
  def change
    create_table :character_stats_dn_d5es do |t|
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :wisdom
      t.integer :intelligence
      t.integer :charisma

      t.timestamps
    end
  end
end
