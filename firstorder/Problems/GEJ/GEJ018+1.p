%--------------------------------------------------------------------------
% File     : GEJ018+1 : ILTP v1.1.2
% Domain   : Constructive Geometry
% Problem  : Theorem 4.6
% Version  : [P95] axioms.
% English  : If X and Y are distinct points, U and V are distinct points,
%          : X and Y are incident with the line connecting U and V, then
%          : U and V are incident with the line connecting X and Y.

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
! [X,Y,U,V] : ((dipt(X,Y) & dipt(U,V) & ((~ apt(X,ln(U,V))) & (~ apt(Y,ln(U,V))))) => ((~ apt(U,ln(X,Y))) & (~ apt(V,ln(X,Y)))))
)).


%--------------------------------------------------------------------------
