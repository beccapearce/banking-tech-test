require 'account'

describe Account do
  let(:subject) {Account.new}

  it "is initialized with a balance of zero" do
    expect(subject.balance).to eq 0
  end

end
