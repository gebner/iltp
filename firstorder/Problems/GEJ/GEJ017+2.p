%--------------------------------------------------------------------------
% File     : GEJ017+2 : ILTP v1.1.0
% Domain   : Constructive Geometry
% Problem  : Lemma 4.5.ii.l
% Version  : [D97],[D98] axioms : Especial.
% English  : If the lines U and V are convergent, then the point that is
%          : incident with both lines is equal to the intersection point
%          : of both lines.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1
%
% Comments : Shortened axioms
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+2.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+2.ax').
%-----------------------------

fof(con,conjecture,(
! [X,Y,U,V] : ((dipt(X,Y) & con(U,V) & ((~ apt(X,U)) & (~ apt(X,V)))) => (~ dipt(X,pt(U,V))))
)).

%--------------------------------------------------------------------------
