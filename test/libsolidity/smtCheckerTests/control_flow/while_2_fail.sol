pragma experimental SMTChecker;
contract C {
	function f(uint x) public pure {
		x = 2;
		while (x > 1) {
			if (x > 10)
				x = 2;
			else
				x = 10;
		}
		assert(x == 2);
	}
}
// ----
// Warning: (158-172): Assertion violation happens here\nNote that some information is erased after the execution of loops.\nYou can re-introduce information using require().
