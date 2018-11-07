%--------------------------------------------------------------------------
% File     : GEJ053+1 : ILTP v1.1.1
% Domain   : Constructive Geometry
% Problem  : Theorem 8.9
% Version  : [P95] axioms.
% English  : A line L is parallel to the line, that is orthogonal to the 
%          : orthogonal to L through A, and goes through A as well.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1.0
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
! [A,L] : (~ con(L,ort(ort(L,A),A)))
)).
