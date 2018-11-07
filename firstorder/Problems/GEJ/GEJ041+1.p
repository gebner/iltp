%--------------------------------------------------------------------------
% File     : GEJ041+1 : ILTP v1.1.2
% Domain   : Constructive Geometry
% Problem  : Theorem 8.1
% Version  : [P95] axioms.
% English  : If the point A is incident with line L, and the line L is
%          : orthogonal to M, then L is equal to the orthogonal to M 
%          : through A.

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
! [A,L,M] : ((~ apt(A,L) & (~ unort(L,M))) => (~ diln(L,ort(M,A))))
)).
