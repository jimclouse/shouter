class FixUserIdsForShouts < ActiveRecord::Migration
  def up
    #execute %{UPDATE shouts set user_id = (select id from users limit 1)}
    execute <<-SQL
      UPDATE shouts 
      set user_id = (select id from users limit 1)
    SQL
  end

  def down
  end
end
