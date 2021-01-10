class AddSummaryToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :summary, :string
  end
end
