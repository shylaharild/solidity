contract C {
    function f() pure public returns (uint, uint) {
        return (1, true);
    }
}
// ----
// TypeError: (80-89): Return argument type tuple(int_const 1,bool) is not implicitly convertible to expected type tuple(uint256,uint256). Types do not match.
