def reverse_integer(int)
  string = int.to_s     # 將整數轉換成字串
  string.reverse!       # 將字串反轉
  result =  string.to_i    # 將字串轉換成數字，並回傳
  result *= -1 if int < 0   # 如果原來的整數是負數，result 變成負數
  return result
end
