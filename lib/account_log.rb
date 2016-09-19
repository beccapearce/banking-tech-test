# account log is responsible for keeping track of the transactions
class AccountLog

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add_credit_transaction(credited, balance)
    @transactions << {credit: credited, balance: balance}
  end

  def add_debit_transaction(debited, balance)
    @transactions << {debit: debited, balance: balance}
  end
end
