require_relative 'account_log'
# The account's purpose is to keep track of the current balance
class Account
  attr_reader :balance, :account_log

  def initialize(balance = 0)
    @balance = balance
    @account_log = AccountLog.new
  end

  def deposit(amount)
    @balance += amount
    @account_log.add_credit_transaction(amount, @balance)
  end

  def withdraw(amount)
    @balance -= amount
    @account_log.add_debit_transaction(amount, @balance)
  end
end
