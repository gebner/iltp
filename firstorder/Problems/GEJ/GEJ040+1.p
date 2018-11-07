%--------------------------------------------------------------------------
% File     : GEJ040+1 : ILTP v1.1.2
% Domain   : Constructive Geometry
% Problem  : Theorem 7.4 
% Version  : [P95] axioms.
% English  : If the point A is apart from the line L, but incident with the
%          : lines M and N, and L is parallel to M and N, then M and N are
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
include('Axioms/GEJ006+1.ax').
include('Axioms/GEJ007+1.ax').
%-----------------------------

fof(con,conjecture,(
! [A,L,M,N] : ((apt(A,L) & (~ apt(A,M)) & (~ apt(A,N)) & (~ con(M,L)) & (~ con(N,L))) => (~ diln(M,N)))
)).

%--------------------------------------------------------------------------
