class CreateMedia < ActiveRecord::Migration[7.0]
  def change
    create_table :media, id: :uuid do |t|
      t.string :facebook
      t.string :youtube
      t.string :twitter
      t.string :instagram
      t.string :linkedin
      t.string :email_action
      t.string :adresse_action
      t.string :phone_action

      t.timestamps
    end
  end
end
