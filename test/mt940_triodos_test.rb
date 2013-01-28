require 'helper'

class TestMt940Triodos < Test::Unit::TestCase

  def setup
    @file_name = File.dirname(__FILE__) + '/fixtures/triodos.txt'
    @info = MT940::Base.parse_mt940(@file_name)["390123456"]
    @transactions = @info.transactions
    @transaction = @transactions.first
  end
  
  should 'have the correct number of transactions' do
    assert_equal 2, @transactions.size
  end

  should 'get the opening balance and date' do
    assert_equal 4975.09, @info.opening_balance
    assert_equal Date.new(2011, 1, 1), @info.opening_date
  end

  should 'get the closing balance and date' do
    assert_equal 4370.79, @info.closing_balance
    assert_equal Date.new(2011, 2, 1), @info.closing_date
  end

  context 'Transaction' do

    should 'have a bank_account' do
      assert_equal '390123456', @transaction.bank_account
    end

    should 'have an amount' do
      assert_equal -15.7, @transaction.amount
    end

    should 'have a currency' do
      assert_equal 'EUR', @transaction.currency
    end

    should 'have a description' do
      assert_equal 'ALGEMENE TUSSENREKENING KOSTEN VAN 01-10-2010 TOT EN M ET 31-12-20100390123456', @transaction.description
    end

    should 'have a date' do
      assert_equal Date.new(2011,1,1), @transaction.date
    end

    should 'return its bank' do
      assert_equal 'Triodos', @transaction.bank
    end

    should 'return the contra_account' do
      assert_equal '987654321', @transaction.contra_account
    end

  end

end
