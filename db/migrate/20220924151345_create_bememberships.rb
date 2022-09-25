class CreateBememberships < ActiveRecord::Migration[7.0]
  def change
    create_table :bememberships, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :country
      t.string :contact
      t.string :terms
      t.string :citytown
      t.string :nationality
      t.string :matrimonial
      t.string :profession
      t.string :employer
      t.string :source
      t.string :avatar
      t.boolean :gender

      t.timestamps
    end
  end
end
