%--------------------------------------------------------------------------
% File     : GEJ047+2 : ILTP v1.1.0
% Domain   : Constructive Geometry
% Problem  : Theorem 8.7.o
% Version  : [D97],[D98] axioms : Especial.
% English  : A Line is not orthogonal to itself.

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
include('Axioms/GEJ012+1.ax').
include('Axioms/GEJ013+1.ax').
include('Axioms/GEJ014+1.ax').
%-----------------------------

fof(con,conjecture,(
! [L] : (~ (~ unort(L,L)))
)).
