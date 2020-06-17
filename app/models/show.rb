class Show < ActiveRecord::Base
  has_many :character
  has_many :actor, through: :character
  def actors_list
    self.actors.map do |t|
      t.full_name
    end
  end
end