class AddUpvotesToQuestion < ActiveRecord::Migration
  def change
  	add_column :questions, :upvotes, :integer, default: 0
  end
end
