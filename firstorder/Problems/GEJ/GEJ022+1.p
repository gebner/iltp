%--------------------------------------------------------------------------
% File     : GEJ022+1 : ILTP v1.1.2
% Domain   : Constructive Geometry
% Problem  : Theorem 4.8 (Symmetry of apartness)
% Version  : [P95] axioms.
% English  : If the lines X and Y are convergent, U and V are convergent,
%          : and the intersection point of X and Y is apart from U and V,
%          : then the intersection point of U and V is apart from X and Y.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1.0
%
% Comments :
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+1.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+1.ax').
%-----------------------------

fof(con,conjecture,(
! [X,Y,U,V] : ((con(X,Y) & con(U,V) & (apt(pt(X,Y),U) | apt(pt(X,Y),V))) => (apt(pt(U,V),X) | apt(pt(U,V),Y)))
)).

%--------------------------------------------------------------------------
