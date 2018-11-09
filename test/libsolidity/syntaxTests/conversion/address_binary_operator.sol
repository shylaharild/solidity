contract C {
    function f() pure public returns (address) {
        return address(0x0) + address(0x0);
    }
}
// ----
// TypeError: (77-104): Operator + not compatible with types address payable and address payable. Addresses can only be compared.
