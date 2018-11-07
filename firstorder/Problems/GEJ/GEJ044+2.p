%--------------------------------------------------------------------------
% File     : GEJ044+2 : ILTP v1.1.0
% Domain   : Constructive Geometry
% Problem  : Corollary 8.4
% Version  : [D97],[D98] axioms : Especial.
% English  : If line L is not orthogonal to line M, then a third line N
%          : is distinct from L or not orthogonal to M.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :

% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1
% Syntax   : 
% Comments : Shortened axioms
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+2.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+2.ax').
include('Axioms/GEJ008+1.ax').
include('Axioms/GEJ009+1.ax').
include('Axioms/GEJ010+1.ax').
include('Axioms/GEJ011+1.ax').
%-----------------------------

fof(con,conjecture,(
! [L,M,N] : (unort(L,M) => (diln(L,N) | unort(M,N)))
)).