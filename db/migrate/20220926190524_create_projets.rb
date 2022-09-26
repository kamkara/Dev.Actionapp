class CreateProjets < ActiveRecord::Migration[7.0]
  def change
    create_table :projets, id: :uuid do |t|
      t.string :title
      t.string :heroImg
      t.date :published
      t.string :slug
      t.string :amount
      t.string :status
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
