class BonusDrink
=begin
- 商+余りを再帰的に計算しながら合計数を出す
- 終了条件は商+余りが3未満になること
- 例:
  amountが11の時
  11 / 3 = 3 余り 2
  5 / 3 = 1 余り 2
  3 / 3 = 1 余り 0
=end
  PER_BONUS = 3
  def self.calculate_total(amount, total_count)
    return total_count if amount < PER_BONUS
    calculate_total(amount / PER_BONUS + amount % PER_BONUS, total_count + amount / PER_BONUS)
  end

  def self.total_count_for(amount)
    calculate_total(amount, amount)
  end
end