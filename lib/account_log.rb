# account log is responsible for keeping a history of the transactions
class AccountLog

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add_credit_transaction(credited, balance)
    @transactions << {date: Date.today, credit: credited, balance: balance}
  end

  def add_debit_transaction(debited, balance)
    @transactions << {date: Date.today, debit: debited, balance: balance}
  end
end
