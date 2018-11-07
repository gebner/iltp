%--------------------------------------------------------------------------
% File     : GEJ055+1 : ILTP v1.1.0
% Domain   : Constructive Geometry
% Problem  : Problem 9.1.
% Version  : [P95] axioms.
% English  : Assume orthogonal geometry. Given a point and a line, to find 
%          : a point incident with the line.

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
include('Axioms/GEJ015+1.ax').
include('Axioms/GEJ016+1.ax').
include('Axioms/GEJ018+1.ax').
%-----------------------------

fof(con,conjecture,(
! [X] : ( ! [Y] : ( ? [Z] : (point(X) & line(Y) & point(Z) & (~ apt(Z,Y)))))
)).