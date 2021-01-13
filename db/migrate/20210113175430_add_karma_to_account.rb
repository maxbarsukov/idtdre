class AddKarmaToAccount < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :karma, :integer, default: 0
  end
end
