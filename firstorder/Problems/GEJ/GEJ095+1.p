%--------------------------------------------------------------------------
% File     : GEJ095+1 : ILTP v1.1.2
% Domain   : Constructive Geometry
% Problem  : Lemma 6.6 (Ordered Geometry)
% Version  : [P98] axioms.
% English  : 

% Refs     : [P98] J. von Plato. A Constructive Theory of Ordered Affine
%                  Geometry. Indagationes Mathematicae, vol. 9: 549-562, 
%                  1998.
% Source   : [P98]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1.0
% Syntax   : 
% Comments :
%--------------------------------------------------------------------------

include('Axioms/GEJ019+1.ax').
include('Axioms/GEJ020+1.ax').
include('Axioms/GEJ021+1.ax').
include('Axioms/GEJ022+1.ax').
include('Axioms/GEJ023+1.ax').
%--------------------------------------------------------------------------

fof(con,conjecture,(
! [L,M,N,A,B,C] : ((bet(L,A,B,C) & con(L,M) & (~ apt(B,M)) & con(L,N) & con(M,N) & (~ apt(B,N))) => bet(M,pt(M,par(N,A)),B,pt(M,par(N,C)))))).

%--------------------------------------------------------------------------
