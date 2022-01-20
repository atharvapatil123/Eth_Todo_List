pragma solidity >=0.5.0;

contract TodoList{
    uint public taskCount = 0; //Written to blockchain, represnt state of contract in blockchain

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks; // (datatype of the key => value, here struct Task), basically return the task based on its id

    //Whenever smart contract is run for the first time
    constructor() public{
        createTask("Your first smart contract is ready!");
    }

    function createTask(string memory _content) public{
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
// 0xFD8eaa114410d32aA17f7182be46272b7E092c1E
}

// todoList = await TodoList.deployed()