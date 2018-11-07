%--------------------------------------------------------------------------
% File     : GEJ037+1 : ILTP v1.1.0
% Domain   : Constructive Geometry
% Problem  : Theorem 7.1
% Version  : [P95] axioms.
% English  : If the point X is incident with the line Y, and the lines
%          : Y and Z are parallel, then the line Y is equal to the parallel
%          : of Z through point X.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1
%
% Comments :
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+1.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+1.ax').
include('Axioms/GEJ006+1.ax').
include('Axioms/GEJ007+1.ax').
%-----------------------------

fof(con,conjecture,(
! [X,Y,Z] : (((~ apt(X,Y)) & (~ con(Y,Z))) => (~ diln(Y,par(Z,X))))
)).

%--------------------------------------------------------------------------
