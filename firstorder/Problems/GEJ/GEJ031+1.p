%--------------------------------------------------------------------------
% File     : GEJ031+1 : ILTP v1.1.0
% Domain   : Constructive Geometry
% Problem  : Theorem 5.1
% Version  : [P95] axioms.
% English  : If the points X and Y are distinct, then the line connecting
%          : X and Y is equal to the line connecting Y and X.

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
%-----------------------------

fof(con,conjecture,(
! [X,Y] : (dipt(X,Y) => (~ diln(ln(X,Y),ln(Y,X))))
)).

%--------------------------------------------------------------------------
