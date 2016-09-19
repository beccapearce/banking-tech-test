# The account's purpose is to keep track of the current balance
class Account
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end
end
