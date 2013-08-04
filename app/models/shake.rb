class Shake < ActiveRecord::Base
  has_many :ikuras

  after_save :create_ikuras

  private

  def create_ikuras
    if ikuras.blank?
      ikura1 = Ikura.new
      ikura1.shake_id = id
      ikura1.name = 'First Ikura'
      ikura1.save
      ikuras << ikura1
    end
  end
end
