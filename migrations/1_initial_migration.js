const Migrations = artifacts.require("Migrations");
const ERC20= artifacts.require("ERC20.sol");
const ICO =artifacts.require("ICO.sol");


module.exports = function(deployer) {
  //deployer.deploy(Migrations);
  //deployer.deploy(ERC20);
  deployer.deploy(ICO);
};
