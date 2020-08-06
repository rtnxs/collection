module ItemsHelper
  def back_side(index)
    index.odd? ? 'left_posit' : 'right_posit'
  end

  def direct_cont(index)
    index.odd? ? 'flex-row' : 'flex-row-reverse'
  end

  def random_coin_background
    %w[assets/coin.jpg assets/coin2.jpg assets/coin3.jpg].sample
  end

  def random_mark_background
    %w[assets/mark.jpg assets/mark2.jpg].sample
  end
end
