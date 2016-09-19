# The account's purpose is to keep track of the current balance
require 'account'

describe Account do
  let (:subject) {Account.new}

  it "initially has a balance of zero" do
    expect(subject.balance).to eq 0
  end
  it "initially has an empty account log" do
    expect(subject.account_log.transactions).to eq []
  end
  it "increases the balance when money is deposited" do
    subject.deposit(10)
    expect(subject.balance).to eq 10
  end
  it "decreases the balance when money is withdrawn" do
    subject.withdraw(5)
    expect(subject.balance).to eq (-5)
  end
  it "adds a withdrawal transaction to the log" do
    subject.withdraw(5)
    expect(subject.account_log.transactions).to eq [{:debit=>5, :balance=>-5}]
  end
  it "adds a deposited transaction to the log" do
    subject.deposit(10)
    expect(subject.account_log.transactions).to eq [{:credit=>10, :balance=>10}]
  end
end
