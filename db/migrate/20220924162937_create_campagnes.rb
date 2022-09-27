class CreateCampagnes < ActiveRecord::Migration[7.0]
  def change
    create_table :campagnes, id: :uuid do |t|
      t.string :title
      t.string :amount
      t.string :status
      t.date :published
      t.string :heroImg
      t.string :slug
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
