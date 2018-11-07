%--------------------------------------------------------------------------
% File     : GEJ014+1 : ILTP v1.1.0
% Domain   : Constructive Geometry
% Problem  : Lemma 4.5.i.r
% Version  : [P95] axioms.
% English  : If X and Y are distinct points, then they are incident with
%          : the line that is equal to the line connecting the points.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1
%
% Comments :
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+1.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+1.ax').
%-----------------------------

fof(con,conjecture,(
! [X,Y,U,V] : ( (dipt(X,Y) & con(U,V) & (~ diln(U,ln(X,Y)))) => ((~ apt(X,U)) & (~ apt(Y,U))))
)).

%--------------------------------------------------------------------------