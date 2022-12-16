class CreateFounders < ActiveRecord::Migration[7.0]
  def change
    create_table :founders, id: :uuid do |t|
      t.string :image
      t.string :title
      t.string :main_message
      t.text :content
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid
      t.string :slug

      t.timestamps
    end
  end
end
