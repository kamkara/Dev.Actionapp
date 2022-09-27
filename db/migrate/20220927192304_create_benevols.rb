class CreateBenevols < ActiveRecord::Migration[7.0]
  def change
    create_table :benevols, id: :uuid do |t|
      t.string :full_name, null: false
      t.string :role
      t.string :link_fb
      t.string :link_tw
      t.string :link_ldin
      t.string :img
      t.string :status
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid
      t.timestamps
    end
  end
end
