// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Paul Bignier
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- ENGLISH IMPOSED -->
// <-- XCOS TEST -->

// Import diagram
assert_checktrue(importXcosDiagram("SCI/modules/xcos/tests/unit_tests/Solvers/ODE.zcos"));

prot = funcprot();
funcprot(0);
function message(msg)
 disp(msg);
endfunction
funcprot(prot);

// Modify solver + run DDaskr + save results
scs_m.props.tol(6) = 102;       // Solver
ier = execstr('xcos_simulate(scs_m, 4);', 'errcatch'); // Run simulation (LSodar will actually take over DDaskr)
assert_checkequal(ier, 0);