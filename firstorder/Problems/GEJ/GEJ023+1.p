%--------------------------------------------------------------------------
% File     : GEJ023+1 : ILTP v1.1.2
% Domain   : Constructive Geometry
% Problem  : Lemma 4.9
% Version  : [P95] axioms.
% English  : If the lines X and Y are convergent, and the intersection 
%          : point of X and Y is apart from a line Z, then Z is distinct
%          : from X and Y.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1.0
%
% Comments :
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+1.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+1.ax').
%-----------------------------

fof(con,conjecture,(
! [X,Y,Z] : (con(X,Y) => (apt(pt(X,Y),Z) => (diln(X,Z) & diln(Y,Z)))))).

%--------------------------------------------------------------------------
