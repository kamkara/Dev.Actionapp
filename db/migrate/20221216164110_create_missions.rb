class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions, id: :uuid do |t|
      t.string :avatar
      t.string :title
      t.string :message
      t.text :campagne_message
      t.string :campagne_avatar
      t.text :projet_message
      t.string :projet_avatar
      t.text :membership_invited

      t.timestamps
    end
  end
end
