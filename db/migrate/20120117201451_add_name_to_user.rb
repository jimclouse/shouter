class AddNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    execute <<-SQL
    UPDATE users
    set first_name = 'user' || id
    SQL
  end
end
