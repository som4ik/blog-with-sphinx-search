class CreateCategoriesUsersJoinTable < ActiveRecord::Migration
  def change
    create_table :categories_users, id: false do |t|
      t.integer :category_id
      t.integer :user_id
    end
 
    add_index :categories_users, :category_id
    add_index :categories_users, :user_id
  end
end
