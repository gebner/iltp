%--------------------------------------------------------------------------
% File     : GEJ052+1 : ILTP v1.1.0
% Domain   : Constructive Geometry
% Problem  : Lemma 8.8
% Version  : [P95] axioms.
% English  : If a point B is incident with the orthogonal to a line L
%          : through point A, then this orthogonal is equal to the
%          : orthogonal to L through B.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :

% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1
% Syntax   : 
% Comments :
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+1.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+1.ax').
include('Axioms/GEJ008+1.ax').
include('Axioms/GEJ009+1.ax').
include('Axioms/GEJ010+1.ax').
include('Axioms/GEJ011+1.ax').
%-----------------------------

fof(con,conjecture,(
! [A,B,L] : ((~ apt(B,ort(L,A))) => (~ diln(ort(L,A),ort(L,B))))
)).
