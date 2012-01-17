class Shout < ActiveRecord::Base
  belongs_to :user
  validates :body, :length => { :in => 5..155}
  def self.current
    order("created_at DESC")
  end
end
