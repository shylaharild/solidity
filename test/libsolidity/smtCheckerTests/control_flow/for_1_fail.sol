pragma experimental SMTChecker;

contract C
{
	function f(uint x) public pure {
		require(x < 100);
		for(uint i = 0; i < 10; ++i) {
			x = x + 1;
		}
		assert(x < 14);
	}
}
// ----
// Warning: (140-145): Overflow (resulting value larger than 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) happens here\nNote that some information is erased after the execution of loops.\nYou can re-introduce information using require().
// Warning: (136-145): Overflow (resulting value larger than 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) happens here\nNote that some information is erased after the execution of loops.\nYou can re-introduce information using require().
// Warning: (153-167): Assertion violation happens here\nNote that some information is erased after the execution of loops.\nYou can re-introduce information using require().
