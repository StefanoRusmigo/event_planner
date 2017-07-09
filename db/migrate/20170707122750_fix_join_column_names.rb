class FixJoinColumnNames < ActiveRecord::Migration[5.1]
  def change
  	rename_column :joins, :user_id, :guest_id
  	rename_column :joins, :event_id, :attended_event_id
  end
end
