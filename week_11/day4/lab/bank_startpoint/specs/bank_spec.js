const assert = require("assert");
const Account = require("../account");
const Bank = require("../bank");

describe("Bank", function(){
    let account1, account2, account3, account4, bank;

    beforeEach(function(){
        account1 = new Account("John", 500, "personal");
        account2 = new Account("CodeClan", 3000, "business");
        account3 = new Account("Colin", 750, "personal");
        account4 = new Account("Arnold Clark", 40000, "business");

        bank = new Bank();
    });

    it("should be able to add an account", function(){
      const expected = [account1];
      bank.addAccount(account1);
      assert.deepStrictEqual(bank.accounts, expected);
    });
    it("should be able to find account by account name", function(){
      bank.addAccount(account1);
      bank.addAccount(account2);
      const actual = bank.findAccountByName('CodeClan');
      assert.deepStrictEqual(actual, account2);
    });



    it("should be able to find the largest account", function(){
      bank.addAccount(account1);
      bank.addAccount(account2);
      bank.addAccount(account3);
      bank.addAccount(account4);
      let foundLargestAccount = bank.findLargest();
      assert.deepStrictEqual(foundLargestAccount, account4);
    });


    it("should be able to find the total value of all accounts", function() {
      bank.addAccount(account1);
      bank.addAccount(account2);
      bank.addAccount(account3);
      bank.addAccount(account4);
      let total = bank.getTotal();
      assert.strictEqual(total, 44250);
    });


    it("should be able to find the average value of all accounts", function(){
      bank.addAccount(account1);
      bank.addAccount(account2);
      bank.addAccount(account3);
      bank.addAccount(account4);
      let average = bank.getAverage();
      assert.strictEqual(average,11062.5);
    });

    it("should be able to find the total value for a certain account type", function() {
      bank.addAccount(account1);
      bank.addAccount(account2);
      bank.addAccount(account3);
      bank.addAccount(account4);

      let total = bank.getTotalForType("personal");
      assert.strictEqual(total, 1250);
    });
});
