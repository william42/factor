USING: math kernel alien alien.c-types ;
IN: benchmark.fib6

: fib ( x -- y )
    int { int } "cdecl" [
        dup 1 <= [ drop 1 ] [
            1 - dup fib swap 1 - fib +
        ] if
    ] alien-callback
    int { int } "cdecl" alien-indirect ;

: fib-main ( -- ) 32 fib drop ;

MAIN: fib-main
