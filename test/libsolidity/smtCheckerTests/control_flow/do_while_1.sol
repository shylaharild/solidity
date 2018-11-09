pragma experimental SMTChecker;

contract C
{
	function f(uint x) public pure {
		require(x < 100);
		do {
			x = x + 1;
		} while (x < 10);
		assert(x > 0);
	}
}
// ----
// Warning: (114-119): Overflow (resulting value larger than 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) happens here\nNote that some information is erased after the execution of loops.\nYou can re-introduce information using require().
// Warning: (110-119): Overflow (resulting value larger than 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) happens here\nNote that some information is erased after the execution of loops.\nYou can re-introduce information using require().
