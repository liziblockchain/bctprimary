/******************************************************************************
File name   : helloWorld.sol
Author      : Kevin Zhang
Vendor      : 粒子区块链(http://liziblockchain.com)
Location    : https://github.com/liziblockchain/bctprimary/
Description : 工业和信息化部-区块链金融行业工程师（初级）培训教程配套源码
******************************************************************************/
// SPDX-License-Identifier: GPLv3

pragma solidity >=0.6.0 <0.7.0;

contract HelloWorld {
    uint256 number;

    function set(uint256 num) public {
        number = num;
    }

    function get() public view returns (uint256){
        return number;
    }
}
