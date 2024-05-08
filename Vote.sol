uint public candidatescount;

  constructor() {
    addcandidate("prakash");
    addcandidate("raj");
  }
  function addcandidate(string memory _name)public {
    candidatescount++;
    candidates[candidatescount] = candidate(candidatescount,_name,0);
  }
  function vote(uint _candidateId) private {
    require(!voters[msg.sender]);
    require(_candidateId > 0 && _candidateId <= candidatescount);

    voters[msg.sender]=true;
    candidates[_candidateId].votecount++;
  }
  

}
