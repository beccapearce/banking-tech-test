# The account's purpose is to keep track of the current balance
require 'account'

describe Account do
  let (:subject) {Account.new}

  it "initially has a balance of zero" do
    expect(subject.balance).to eq 0
  end
end
