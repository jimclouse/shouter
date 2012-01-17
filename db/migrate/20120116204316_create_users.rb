class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.email :string
      t.timestamps
    end
  end
end
