# My first ICO

- The ERC20 token was created with the files of OpenZeppelin
    - The ticker is "AYM"
    - The total supply is 1000
    - The decimal is 0.001

- All of the ERC20 functions have been implemented.

- To migrate my contracts to GANACHE I set the port, the url and the network_id of ganache and I set the version of solidity on 0.6.0 in *truffle-config*.

- I used the truffle console and the *truffle deploy* command to deploy my contracts.

- I implemented the white listing, the multi level distribution and the air drop functions with an array and a struct of "user" containing both address and rank of the user.

- Only the deployer of the contract, that means me, can add user to the whitelist. Only users in the whiteList can participate to the ICO.

- The owner of the contract can also send "AYM" token to anybody with the function *donateToken()*.

- To deploy to Rinkenby Testnet, I have downloaded the *truffle HD wallet* package from npm, then I have created an account on infura to have an API KEY to connect truffle to my HD wallet on metamask. And then from the console I deploy my contracts using "truffle console --network rinkeby" and then "truffle deploy". I interacted with my contract from this console with "let ico = await ICO.deployed()" etc... or from *metamask* and *Mycrypto.com* with the ABI's.

- I sent 2 "AYM" token to the address of the teacher : "0x6F891Cc103F5F320C129Baeb6622f52E15522527". He can verify it with the function _balanceOf(address my_address).

- I run several tests with the command *truffle test* with node 11 because node 12 wasn't compatible.

**Contract Address (ICO) : 0x3c111D5F733c21553D80443F968872d5C3149a15**

**You can access the ABI on the directory build\contracts**