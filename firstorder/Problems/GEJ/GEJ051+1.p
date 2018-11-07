%--------------------------------------------------------------------------
% File     : GEJ051+1 : ILTP v1.1.1
% Domain   : Constructive Geometry
% Problem  : Theorem 8.7.iv
% Version  : [P95] axioms.
% English  : If a line L is orthogonal to line M and line N is orthogonal
%          : to L, then M and N are parallel.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1.0
% Syntax   : 
% Comments :
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+1.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+1.ax').
include('Axioms/GEJ006+1.ax').
include('Axioms/GEJ007+1.ax').
include('Axioms/GEJ012+1.ax').
include('Axioms/GEJ013+1.ax').
include('Axioms/GEJ014+1.ax').
%-----------------------------

fof(con,conjecture,(
! [L,M,N] : (((~ unort(L,M)) & (~ unort(L,N))) => (~ con(M,N)))
)).
