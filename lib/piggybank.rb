class PiggyBank

  attr_reader :coin

  def initialize
    @balance = 0
  end

  def deposit(coin)
    @balance += coin
  end

  def shake
    fail 'tumbleweed...' unless @balance > 0
    'cling!'
  end

  def break
    @balance
  end
end
