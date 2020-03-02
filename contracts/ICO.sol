pragma solidity >=0.4.21 <0.7.0;

import "./ERC20.sol";

contract ICO is ERC20{
    using SafeMath for uint256;

    struct user{
        address eth_adress;
        uint256 rank;
    }
    address payable private  _owner;
    user[] private _whiteList;
    address private myContract = address(this);
    event addCustomer (bool added);

    constructor() public{
        _owner = msg.sender;
    }

    modifier OnlyOwner() {
        require (msg.sender == _owner, "Only owner can access");
        _;
    }
    function AddToWhiteList(address _newMember) public OnlyOwner{
        if(_whiteList.length < 10){
            _whiteList.push(user(_newMember,4));
            emit addCustomer(true);
        }
        else{
            if(_whiteList.length < 20){
            _whiteList.push(user(_newMember,3));
            emit addCustomer(true);
            }
            else{
                if(_whiteList.length < 30){
                _whiteList.push(user(_newMember,2));
                emit addCustomer(true);
                }
                else{
                    _whiteList.push(user(_newMember,1));
                    emit addCustomer(true);
                }
            }
        }
    }
    function ExistInList(address myAdress) public view returns(bool,uint256){
        bool exist = false;
        uint256 id = 0;
        for (uint i = 0 ; i < _whiteList.length ; i++){
            if(_whiteList[i].eth_adress == myAdress){
                exist = true;
                id = i;
            }
        }
        return (exist,id);
    }
    function donateToken(address _receiver, uint256 _amount) public OnlyOwner(){
        _mint(_receiver, _amount);
    }

    function receiveToken() public payable {
        bool exist;
        uint256 id;
        (exist,id) = ExistInList(msg.sender);
        require(exist,"Must be in list of donaters");
        _mint(msg.sender,(uint256(msg.value) * _whiteList[id].rank));
    }
    function getEther() public payable OnlyOwner{
        if (myContract.balance >= 2){
            _owner.transfer(myContract.balance);
        }
    }
}