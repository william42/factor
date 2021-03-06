USING: tools.test cpu.architecture
compiler.cfg.registers compiler.cfg.instructions
compiler.cfg.representations.preferred ;
IN: compiler.cfg.representations

[ { double-rep double-rep } ] [
    T{ ##add-float
       { dst 5 }
       { src1 3 }
       { src2 4 }
    } uses-vreg-reps
] unit-test

[ double-rep ] [
    T{ ##alien-double
       { dst 5 }
       { src 3 }
    } defs-vreg-rep
] unit-test