require("minitest/autorun")
require("minitest/rg")
require_relative("../bank_account")

class TestBankAccount < MiniTest::Test

  def test_account_name
    bank_account = BankAccount.new("John", 500, "business")
    #matts_account = BankAccount.new("Matt", 100000, "personal")
    #Can create multiple accounts just by using BankAccount.new
    #and passing values into it

    assert_equal("John", bank_account.holder_name)
    #****encapsulation***
  end

  def test_account_balance
    bank_account = BankAccount.new("Angelina", 500, "personal")
    assert_equal(500, bank_account.balance)
  end

  def test_account_type
    bank_account = BankAccount.new("Grant", 100, "personal")
    assert_equal("personal", bank_account.type)
  end

end
