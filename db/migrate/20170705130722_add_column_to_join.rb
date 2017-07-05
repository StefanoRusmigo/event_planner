class AddColumnToJoin < ActiveRecord::Migration[5.1]
  def change
  	add_column :joins, :user_id, :integer
  end
end
