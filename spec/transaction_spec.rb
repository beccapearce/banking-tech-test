require 'transaction'
require 'account'

describe Transaction do
  let(:subject) {Transaction.new}
  let(:account) {Account.new}

  it "is initialized with a balance of zero" do
    expect(subject.balance).to eq 0
  end


end
