%--------------------------------------------------------------------------
% File     : GEJ043+1 : ILTP v1.1.2
% Domain   : Constructive Geometry
% Problem  : Theorem 8.3
% Version  : [P95] axioms.
% English  : If a line L is not orthogonal to M, then a third line N is 
%          : convergent to L or not orthogonal to M.

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
include('Axioms/GEJ008+1.ax').
include('Axioms/GEJ009+1.ax').
include('Axioms/GEJ010+1.ax').
include('Axioms/GEJ011+1.ax').
%-----------------------------

fof(con,conjecture,(
! [L,M,N] : (unort(L,M) => (con(L,N) | unort(M,N)))
)).
