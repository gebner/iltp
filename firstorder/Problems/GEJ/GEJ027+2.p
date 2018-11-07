%--------------------------------------------------------------------------
% File     : GEJ027+2 : ILTP v1.1.2
% Domain   : Constructive Geometry
% Problem  : Theorem 4.11
% Version  : [D97],[D98] axioms : Especial.
% English  : If the lines X and Y are convergent, U and V are convergent,
%          : and the intersection point of X and Y is incident with U and V,
%          : then the intersection point of U and V is incident with X and Y.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1.0
%
% Comments : Shortened axioms
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+2.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+2.ax').
%-----------------------------

fof(con,conjecture,(
! [X,Y,U,V] : ((con(X,Y) & con(U,V) & ((~ apt(pt(X,Y),U)) & (~ apt(pt(X,Y),V)))) => ((~ apt(pt(U,V),X)) & (~ apt(pt(U,V),Y))))
)).

%--------------------------------------------------------------------------
