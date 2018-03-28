class Cart

  PRICE = 100     # 每本書的單價是 100 元

  def add(items)
    @ordered_items = items.map{ |key,value| value }   # 把資料由 Hash 轉成陣列
  end

  def calculate    # 計算客戶所買的書本總價
    total = 0
    @ordered_items = @ordered_items.delete_if{ |i| i == 0 } # 刪除客戶沒有買的哈利波特集數

    if @ordered_items.size == 2       # 如果買了一組，要依原價打 5% 折扣
      total = total + 2 * PRICE * 0.95
    else
      for item in @ordered_items do   # 如果只買了單集 1 本或多本，就原價計算
        total = total + item * PRICE
      end
    end

    return total
  end

end
