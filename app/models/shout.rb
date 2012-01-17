class Shout < ActiveRecord::Base
  def self.current
    order("created_at DESC")
  end
end
