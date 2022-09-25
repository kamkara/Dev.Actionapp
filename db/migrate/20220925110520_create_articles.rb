class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles, id: :uuid do |t|
      t.string :title, null: false
      t.string :status, null: false
      t.date :published, null: false
      t.string :slug
      t.string :heroImg
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
