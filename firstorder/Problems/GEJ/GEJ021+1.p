%--------------------------------------------------------------------------
% File     : GEJ021+1 : ILTP v1.1.1
% Domain   : Constructive Geometry
% Problem  : Collary 4.7.iii
% Version  : [P95] axioms.
% English  : If X, Y, and Z are pairwise distinct, and Z is incident with 
%          : the line connecting X and Y, then Z is incident with the line
%          : connecting Y and X.

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
%-----------------------------

fof(con,conjecture,(
! [X,Y,Z] : ((dipt(X,Y) & dipt(X,Z) & dipt(Y,Z) & (~ apt(Z,ln(X,Y)))) => (~ apt(Z,ln(Y,X))))
)).

%--------------------------------------------------------------------------
