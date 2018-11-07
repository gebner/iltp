%--------------------------------------------------------------------------
% File     : GEJ036+1 : ILTP v1.1.1
% Domain   : Constructive Geometry
% Problem  : Theorem 5.6
% Version  : [P95] axioms.
% English  : If the lines X and Y are convergent, and Y and Z are 
%          : equivalent, then X and Z are convergent, and the intersection
%          : point of X and Y, and the intersection point of X and Z are
%          : equal.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1.0
%
% Comments :
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+1.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+1.ax').
%-----------------------------

fof(con,conjecture,(
! [X,Y,Z] : ((con(X,Y) & (~ diln(Y,Z))) => (con(X,Z) & (~ dipt(pt(X,Y),pt(X,Z)))))
)).

%--------------------------------------------------------------------------
