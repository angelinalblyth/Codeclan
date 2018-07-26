const _ = require("lodash");

const Bank = function(){
 this.accounts = [];
};

Bank.prototype.addAccount = function(account){
  this.accounts.push(account);
}

Bank.prototype.findAccountByName = function (title) {
  return _.find(this.accounts, {name: title})
};

Bank.prototype.findLargest = function () {
  return _.maxBy(this.accounts, "balance")
};

Bank.prototype.getTotal = function () {
  // let allcash = 0;
  // _.forEach(this.accounts, function(account){
  //   allcash += account.balance;
  // })
  // return allcash;


  return _.sumBy(this.accounts, "balance");
};

Bank.prototype.getAverage = function () {
  return _.meanBy(this.accounts, "balance");
};

Bank.prototype.getTotalForType = function (type) {
  return _.chain(this.accounts).filter(account => account.type === type).sumBy("balance").value()
};

module.exports = Bank;
