pragma solidity >=0.5.8;

contract TestContract {
    struct TestStruct {
        uint uint_field;
        bool bool_field;
        string string_field;
    }

    mapping(string => TestStruct) public test_mapping;

    event Modification(
        string key,
        bool is_removal
    );


    function addToMapping(string calldata key, TestStruct calldata value) public {
        test_mapping[key] = value;
        emit Modification(key, false);
    }


    function removeFromMapping(string calldata key) public {
        delete test_mapping[key];
        emit Modification(key, true);
    }
}
