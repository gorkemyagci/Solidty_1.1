// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract AddingUser {

    // VARİABLES & SCOPES

    // int number = 10;
    // bool isTrue = false;
    // int8 num2 = 127;
    // // 0 to 2^256
    // uint256 num3 = 450;
    // // to keep adress
    // address myAdress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // bytes32 name = "gorkem";
    // string name2 = "Gorkem";
    // uint[] array = [0,1,2,3,4,5,6,7,8,9];
    
  // ADD USER

        struct User {
        uint ID;
        string name;
        string surname;
        uint age;
    }

    mapping(uint => User) user;
    uint256[] public userIds;


   function addUser(string memory _name, string memory _surname, uint _age) public {
      User storage newUser = user[userIds.length];
      newUser.ID = userIds.length;
      newUser.name = _name;
      newUser.surname = _surname;
      newUser.age = _age;
      userIds.push(userIds.length);
   }

   function getUser(uint id) public view returns (uint, string memory, string memory, uint){
    User storage s = user[id]; 
    return (s.ID,s.name,s.surname,s.age);
   }
  }
