class AddOtherToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :other, :string
  end
end
