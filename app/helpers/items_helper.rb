module ItemsHelper
  def back_side(index)
    index.odd? ? 'left_posit' : 'right_posit'
  end

  def direct_cont(index)
    index.odd? ? 'flex-row' : 'flex-row-reverse'
  end

  def random_coin_background
    %w[coin.jpg coin2.jpg coin3.jpg].sample
  end

  def random_mark_background
    %w[mark.jpg mark2.jpg].sample
  end
end
