contract C {
    function g() pure public {
        function () pure external fn;
        fn++;
    }
}
// ----
// TypeError: (90-94): Unary operator ++ cannot be applied to type function () pure external. Only delete is allowed as unary operator for functions.
