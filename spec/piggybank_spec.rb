require_relative '../lib/piggybank.rb'

describe PiggyBank do

  it 'deposits coins' do
    expect(subject.deposit(2)).to eq 2
  end

  it 'clings when shook if money is in it' do
    subject.deposit(1)
    expect(subject.shake).to eq 'cling!'
  end

  it 'does not cling if piggybank is empty' do
    expect{subject.shake}.to raise_error 'tumbleweed...'
  end

end
