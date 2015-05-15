class AddInfoStopToUsers < ActiveRecord::Migration
  def change
    add_column :users, :info_stop, :boolean,default: :true
  end
end
