require 'spec_helper'

describe String do
  describe '#<<' do
    it 'plus word' do
      s = "ABC"
      s << "D"
      expect(s.size).to eq(4)
      # expectはターゲット(s.size)がマッチャーeq(4)の条件を満たすかどうかを判定する
    end

# xexampleは未完了という意味
    xexample 'nilの追加' do
      s = "ABC"
      s << nil
      expect(s.size).to eq(4)
    end

    it 'cannot plus nil', :exception do
      s = "ABC"
      expect { s << nil }.to raise_error(TypeError)
    end
  end
end
