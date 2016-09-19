# account log is responsible for keeping track of the transactions
require 'account_log'

describe AccountLog do
  let (:subject) {AccountLog.new}
  let(:today) { Date.today }

  it "initially has an empty array of transactions" do
    expect(subject.transactions).to eq []
  end
  it "adds an entry when account is credited" do
    subject.add_credit_transaction(5, 15)
    expect(subject.transactions).to eq [{date: today, credit: 5, balance: 15}]
  end
  it "adds an entry when account is debited" do
    subject.add_debit_transaction(5, 15)
    expect(subject.transactions).to eq [{date: today, debit: 5, balance: 15}]
  end
end
