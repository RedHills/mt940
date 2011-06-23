require 'helper'

class TestMt940Triodos < Test::Unit::TestCase

  def setup
    file_name = File.dirname(__FILE__) + '/fixtures/triodos.txt'
    @transactions = MT940::Triodos.transactions(file_name)
    @transaction = @transactions.first
  end
  
  should 'have the correct number of transactions' do
    assert_equal 2, @transactions.size
  end

  context 'Transaction' do
    should 'have a bank_account' do
      assert_equal '0390123456', @transaction.bank_account
    end

    should 'have an amount' do
      assert_equal -15.7, @transaction.amount
    end

    should 'have a description' do
      assert_equal '0000000000000ALGEMENE TUSSENREKENING KOSTEN VAN 01-10-2010 TOT EN MET 31-12-20100390123456', @transaction.description
    end
  end

end