%--------------------------------------------------------------------------
% File     : GEJ053+2 : ILTP v1.1.0
% Domain   : Constructive Geometry
% Problem  : Theorem 8.9
% Version  : [D97],[D98] axioms : Especial.
% English  : A line L is parallel to the line, that is orthogonal to the 
%          : orthogonal to L through A, and goes through A as well.

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
! [A,L] : (~ con(L,ort(ort(L,A),A)))
)).