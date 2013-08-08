# coding: utf-8

require 'spec_helper'

describe Koujou do
  it '製品製造後の在庫(製品)増加の確認.' do
    koujou = Koujou.new
    koujou.name = 'テスト'
    koujou.save

    kouin = Kouin.new
    kouin.koujou_id = koujou.id
    kouin.name = '浜松浜子'
    kouin.save

    expect {
      seihin = kouin.seizou
      seihin.save
    }.to change{Koujou.find(koujou.id).seihins.size}.by(1)
  end
end
