// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12<0.9.0;

contract Datatypes {
  int public temperature =-10;
  uint256 public number;
  uint8 public age =25;
  string public text;

  struct Person{
    bool vote;
    string name;
    uint age;
  } 
  enum Colour {Red,Blue,Green}
  Colour public favouriteColour;
  Person public person;
  constructor() {  
    number = 1 days;
    text="etherum,Blockchain,Solana";
    favouriteColour=Colour.Green;
    person.name="prakash";
    person.age=18;
    person.vote=true;
    }
    function op(uint256 a,uint256 b)  public pure returns (uint256[5]memory) { 
     uint256 [5]memory results;


    results[0]=a+b;
    results[1]=a-b;
    results[2]=a*b; 
    results[3]=a/b; 
    results[4]=a%b;
    return results;


    }
    function concatenatetext (string memory a, string memory b) public pure returns (string memory )
    {
      return  string(abi.encodePacked(a,b));
      }

}
