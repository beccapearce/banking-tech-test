# account log is responsible for printing out tansaction history
require 'account_log_printer'

describe AccountLogPrinter do
  let (:subject) { described_class.new }
  let(:today) { Date.today }


  it "prints out the account history" do
    account_log = double("account_log")
    allow(account_log).to receive(:transactions).and_return [{date: today, credit: 1000, balance: 1000}, {date: today, debit: 100, balance: 900}]
    expect { subject.print(account_log.transactions) }.to output("2016-09-19, 1000, , 1000\n2016-09-19, , 100, 900\n").to_stdout
  end
end
