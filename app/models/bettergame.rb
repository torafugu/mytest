# encoding: utf-8

class Bettergame < ActiveRecord::Base
  has_many :players, :through => :betterlineups
  has_many :betterlineups
  accepts_nested_attributes_for :betterlineups

  def player_names
    players.collect{|p| p.name}.join(', ')
  end

  # PlayerクラスのIDを配列でget/setできる属性を追加
  def player_ids
    @player_ids || players.collect{|p| p.id}
  end
 
  def player_ids=(id_array)
    @player_ids = id_array.collect{|id| id.to_i};
  end

  after_save :assign_players

  private

  # PlayerクラスのIDの配列から、Betterlineupクラスを追加/編集/削除する。
  def assign_players
    if @player_ids
      new_ids = @player_ids
      old_ids = players.collect{|p| p.id}
      ids_to_delete = old_ids - (old_ids & new_ids)
      ids_to_add = new_ids - (old_ids & new_ids)
      bettergame_id = id
 
      ids_to_delete.each do |player_id|
        Betterlineup.destroy_all(:bettergame_id => bettergame_id, :player_id => player_id)
      end
 
      ids_to_add.each do |player_id|
        Betterlineup.create(:bettergame_id => bettergame_id, :player_id => player_id)
      end
    end
  end
end
