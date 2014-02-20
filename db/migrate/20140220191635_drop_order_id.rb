class DropOrderId < ActiveRecord::Migration
  def change
  	remove_column :accounts, :order_id
  end
end
