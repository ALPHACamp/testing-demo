class Cart

  PRICE = 100     # 每本書的單價是 100 元

  def add(items)
    @ordered_items = items.map{ |key,value| value }   # 把資料由 Hash 轉成陣列
  end

  def calculate    # 計算客戶所買的書本總價
    total = 0
    @ordered_items = @ordered_items.delete_if{ |i| i == 0 } # 刪除客戶沒有買的哈利波特集數

    if @ordered_items.size == 2       # 如果客戶買了兩集的哈利波特
      while @ordered_items.size > 0   # 當還有書籍時
        total = total + 2 * PRICE * 0.95   # 把客戶買的一組哈利波特打折後計入總價
        @ordered_items[0] -= 1       # 刪除已計算過的書籍
        @ordered_items[1] -= 1       # 刪除已計算過的書籍
        @ordered_items = @ordered_items.delete_if{ |i| i == 0 }
      end
    else
      for item in @ordered_items do   # 客戶只買了單一集的哈利波特
        total = total + item * PRICE
      end
    end

    return total
  end

end
