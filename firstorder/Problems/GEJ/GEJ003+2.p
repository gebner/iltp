%--------------------------------------------------------------------------
% File     : GEJ003+2 : ILTP v1.1.2
% Domain   : Constructive Geometry
% Problem  : Theorem 3.3. Uniqueness of constructed points
% Version  : [D97],[D98] axioms : Especial.
% English  : If two lines are convergent and there is a point that is
%          : incident with both lines, then this point is equivalent to the
%          : intersection point of these lines.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1.0
%
% Comments : Shortened axioms
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+2.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+2.ax').
%-----------------------------

fof(con,conjecture,(
( ! [X,Y,Z] : ( (con(X, Y) & ( ~apt(Z, X) & ~apt(Z, Y))) => ~dipt(Z, pt(X, Y)))) 
)).

%--------------------------------------------------------------------------
