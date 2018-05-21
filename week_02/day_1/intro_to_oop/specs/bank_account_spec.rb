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

  def test_set_account_name
    # arrange
    bank_account = BankAccount.new("John", 500, "business")
    # act
    bank_account.set_holder_name("John McC")

    # assert
    assert_equal("John McC", bank_account.holder_name)
  end

  def test_set_account_balance
    bank_account = BankAccount.new("Angelina", 500, "personal")
    bank_account.set_account_balance(10)
    assert_equal(10, bank_account.balance)
  end

  def test_set_account_type
    bank_account = BankAccount.new("Grant", 100, "personal")
    bank_account.set_account_type("business")
    assert_equal("business", bank_account.type)
  end

end
