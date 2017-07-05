class AddCreatorIdToEvent < ActiveRecord::Migration[5.1]
  def change
  	add_column :event,:creator_id,:integer
  end
end
