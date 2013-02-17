# encoding: utf-8

class Bestgame < ActiveRecord::Base

  has_many :players, :through => :bestlineups
  has_many :bestlineups
  accepts_nested_attributes_for :bestlineups

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

  # Lineupクラスに存在しないPlayerのIDを配列でget/setできる属性を追加
  def non_lineup_ids
    @non_lineup_ids || players.collect{|p| p.id} - bestlineups.collect{|p| p.id}
  end
 
  def non_lineup_ids=(id_array)
    @non_lineup_ids = id_array.collect{|id| id.to_i};
  end
  after_save :assign_players

  private

  # PlayerクラスのIDの配列から、Betterlineupクラスを追加/編集/削除する。
  def assign_players
  
    logger.debug "Log Start"
    logger.debug @player_ids
    
    if @player_ids
      new_ids = @player_ids
      old_ids = players.collect{|p| p.id}
      ids_to_delete = old_ids - (old_ids & new_ids)
      ids_to_add = new_ids - (old_ids & new_ids)
      bestgame_id = id
 
      ids_to_delete.each do |player_id|
        Bestlineup.destroy_all(:bestgame_id => bestgame_id, :player_id => player_id)
      end
 
      ids_to_add.each do |player_id|
        unless player_id == 0
          Bestlineup.create(:bestgame_id => bestgame_id, :player_id => player_id)
        end
      end
    end
  end
end
