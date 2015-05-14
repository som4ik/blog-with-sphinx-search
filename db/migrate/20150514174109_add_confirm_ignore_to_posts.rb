class AddConfirmIgnoreToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :confirm, :boolean,default: :false
    add_column :posts, :ignore, :boolean,default: :false
  end
end
