contract A {
    uint dummy;
    function f(uint[] calldata) external pure {}
    function g(uint[] calldata) external view { dummy; }
    function h(uint[] calldata) external { dummy = 42; }
    function i(uint[] calldata) external payable {}
}
contract B is A {
    function f(uint[] calldata) external pure {}
    function g(uint[] calldata) external view { dummy; }
    function h(uint[] calldata) external { dummy = 42; }
    function i(uint[] calldata) external payable {}
    function f(uint[] memory) public pure {}
    function g(uint[] memory) public view { dummy; }
    function h(uint[] memory) public { dummy = 42; }
    function i(uint[] memory) public payable {}
}
// ----
// TypeError: (483-523): Function overload clash during conversion to external types for arguments.
// TypeError: (528-576): Function overload clash during conversion to external types for arguments.
// TypeError: (581-629): Function overload clash during conversion to external types for arguments.
// TypeError: (634-677): Function overload clash during conversion to external types for arguments.
