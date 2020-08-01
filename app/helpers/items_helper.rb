module ItemsHelper
  def back_side(index)
    index.odd? ? 'left_posit' : 'right_posit'
  end

  def direct_cont(index)
    index.odd? ? 'flex-row' : 'flex-row-reverse'
  end
end