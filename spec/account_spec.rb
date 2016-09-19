# The account's purpose is to keep track of the current balance
require 'account'

describe Account do
  let (:subject) {Account.new}

  it "initially has a balance of zero" do
    expect(subject.balance).to eq 0
  end
  it "increases the balance when money is deposited" do
    subject.deposit(10)
    expect(subject.balance).to eq 10
  end
  it "decreases the balance when money is withdrawn" do
    subject.withdraw(5)
    expect(subject.balance).to eq (-5)
  end
end
