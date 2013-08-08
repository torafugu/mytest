class Kouin < ActiveRecord::Base
  belongs_to :koujou

  def seizou
    seihin = Seihin.new
    seihin.koujou_id = koujou_id
    max_seihin_num = Seihin.maximum(:seihin_num)
    if max_seihin_num.blank?
      seihin.seihin_num = 1
    else
      seihin.seihin_num = max_seihin_num + 1
    end
    return seihin
  end
end
