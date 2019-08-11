module RankingHelper
  def get_ordinal_rating(page, index)
    return get_order(page, index) - 25 unless page < 2
    get_order(page, index)
  end

  def get_order(page, index)
    (page * 25) + 1 + index
  end
end
