# 区块链行业产品经理（初级）课程-实训练习

***
### 以太坊基本操作练习

##### 练习内容：

* 搭建以太坊开发环境（Windows/Linux/MacOS任一环境均可）


* geth命令行参数
  - 链接到以太坊主网（不附带任何参数）
  ```
  geth
  ```
  - 以开发模式启动
  ```
  geth --dev
  ```
  - 启用 HTTP-RPC 服务
  ```
  geth --http
  ```
  - 启用 Web Socket 服务
  ```
  geth --ws
  ```
  - 启动交互式的JavaScript控制台窗口（命令行）
  ```
  geth console
  ```
  - 指定数据存储目录
  ```
  geth --datadir ~/ethdata
  ```
  - 使用默认的数据存储目录，以及查看存储路径（没有添加 --datadir）
  ```
  geth   
  ```
  - 我们的实战练习使用的命令：
  ```
  geth console --dev --http
  ```


* 基本的账户操作(JavaScript交互式控制台窗口-命令行环境)
  - 查看账户列表
  ```
  eth.accounts
  ```
  - 创建新账户
  ```
  personal.newAccount("password")
  ```
  - 获取某一个特定的账户
  ```
  eth.accounts[0]
  eth.accounts[1]
  ```
  - 锁定/解锁一个指定的账户
  ```
  personal.lockAccount("0x60c38457a2545bf22ba10b3334cab2815e836d21")
  personal.unlockAccount("0x60c38457a2545bf22ba10b3334cab2815e836d21")
  ```
  - 查看账户数据文件
  ```
  在数据存储目录下去查看keystore文件
  ```
  - 备份账户数据文件
  ```
  备份数据存储目录下的keystore文件
  ```


* 转账(JavaScript交互式控制台窗口-命令行环境)
   - 转账操作
   ```
   user0=eth.accounts[0]
   user1="0x898c22db1b43ceaed7e7f66292e6aa2ff9f967f8"
   eth.sendTransaction({from:user0, to:user1, value:web3.toWei(9)})
   eth.sendTransaction({from:user0, to:user1, value:web3.toWei(0.0123456)})
   ```
   - 查询账户余额
   ```
   user1=eth.accounts[1]
   eth.getBalance(user1)
   ```


* 区块操作(JavaScript交互式控制台窗口-命令行环境)
  - 查看最新的区块编号
  ```
  eth.blockNumber
  ```
  - 查看创世区块数据
  ```
  eth.getBlock(0)
  ```
  - 查看指定的区块数据（使用区块号、使用区块hash）
  ```
  eth.getBlock(100)
  eth.getBlock("0x507340d4afb4965da1f44db53835e578a755819fac1794d05c550da92c78ad04")
  ```
  - 查看最新的区块数据
  ```
  eth.getBlock("latest")
  ```
  - 区块中关键数据解读



* 交易操作(JavaScript交互式控制台窗口-命令行环境)
  - 发送一个新的交易
  ```
  参见“转账操作”
  ```
  - 查看某一个区块中所有的交易列表
  ```
  eth.getBlock(100, true)
  eth.getBlock("latest", true)
  ```
  - 查看某一个指定的交易
  ```
  eth.getTransaction("0x2bd6b3bc1b97c444a76f707dd33dd4815606142d61165726d3dff9aca9f98c1b")
  ```
  - 交易数据解读

***

### MetaMask以太坊钱包练习

##### 练习内容：

* 安装MetaMask
* 切换连接的以太坊网络
* 创建账号
* 导入账户
* 切换账户
* 清除账户数据
* 转账
  - 调整Gas Price和Gas Limit
* 查看余额
* 查看账户交易记录


***
### 智能合约

##### 练习内容：

* 理解智能合约的基础概念和原理
* 练习智能合约从代码编写、编译、部署、调用的全流程
* 理解智能合约中数据的存储、修改、获取

* 以太坊智能合约IDE：https://remix.ethereum.org/



***
### 区块链浏览器

##### 练习内容：

* 以太坊区块链浏览器Etherscan介绍
* 查看区块信息、交易信息、账户信息
* 交易发送、验证、查看交易数据
* 智能合约部署、调用、查看

* https://cn.etherscan.com/
* http://etherscan.io/




***
## 资源链接：

[区块链相关资源链接 ../../docs/usefulLinks.md ](../../docs/usefulLinks.md)



***

![](../../imgs/liziblockchain_wechat.jpg)


Developed by 粒子区块链(http://liziblockchain.com)

微信公众号：粒子区块链
