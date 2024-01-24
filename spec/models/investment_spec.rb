require 'rails_helper'

RSpec.describe Investment, type: :model do
  subject { Investment.new(name: 'NTFs', amount: 500, user_id: 1) }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'icon should be present' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end
end
