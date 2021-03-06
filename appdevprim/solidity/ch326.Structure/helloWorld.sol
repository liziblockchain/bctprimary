/******************************************************************************
File name   : helloWorld.sol
Author      : Kevin Zhang
Vendor      : 粒子区块链(http://liziblockchain.com)
Location    : https://github.com/liziblockchain/bctprimary/
Description : 工业和信息化部-区块链应用工程师（初级）培训教程配套源码
******************************************************************************/
// SPDX-License-Identifier: GPLv3

pragma solidity ^0.6.0;

import "./family.sol";
// import "./height.sol" as myheight;
import * as myheight from "./height.sol";

contract HelloWorld {

    Family  myfamily;
    myheight.Height height;

    /// 构造函数
    constructor() public {
        initialize();
    }

    function initialize() public {
        myfamily = new Family();
        height = new myheight.Height();
    }

    function setAge(uint32 num) public {
        myfamily.setAge(num);
    }

    function getAge() public view returns (uint32) {
        return myfamily.getAge();
    }

    /**
      @param num uint32 设置高度数值
     */
    function setHeight(uint32 num) public {
        height.setHeight(num);
    }

    /**
      @return 返回高度数值
     */
    function getHeight() public view returns (uint32){
        return height.getHeight();
    }

}
