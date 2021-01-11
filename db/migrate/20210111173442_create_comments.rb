class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :account
      t.references :post
      t.text :message

      t.timestamps
    end
  end
end
