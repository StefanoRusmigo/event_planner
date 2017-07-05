class AddEventIdToJoin < ActiveRecord::Migration[5.1]
  def change
  	  	add_column :joins, :event_id, :integer

  end
end
