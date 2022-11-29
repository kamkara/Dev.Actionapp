class CreatePrivacies < ActiveRecord::Migration[7.0]
  def change
    create_table :privacies, id: :uuid do |t|
      t.string :name
      t.string :slug
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
