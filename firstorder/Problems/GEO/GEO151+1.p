%--------------------------------------------------------------------------
% File     : GEO151+1 : ILTP v1.1.0
% Domain   : Geometry (Oriented curves)
% Problem  : Object stays still while one moves
% Version  : [EHK99] axioms.
% English  : If an object is in a position before and after another object 
%            moves, then it stays in this position while the other one moves

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [EHK99]
% Names    : T17 [EHK99]

% Status   : Unknown
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   37 (   3 unit)
%            Number of atoms       :  136 (  17 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :  108 (   9 ~  ;  10  |;  43  &)
%                                         (  24 <=>;  22 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   16 (   0 propositional; 1-4 arity)
%            Number of functors    :    5 (   0 constant; 1-2 arity)
%            Number of variables   :  124 (   0 singleton; 108 !;  16 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%----Include axioms of betweenness for simple curves
include('Axioms/GEO004+1.ax').
%----Include oriented curve axioms
include('Axioms/GEO004+2.ax').
%----Include trajectory axioms
include('Axioms/GEO004+3.ax').
%--------------------------------------------------------------------------
fof(t17,conjecture,
    ( ! [P,Q1,Q2,Q3,X,Y] : 
        ( ( once(at_the_same_time(at(X,P),at(Y,Q1)))
          & once(at_the_same_time(at(X,P),at(Y,Q3)))
          & between_o(trajectory_of(X),Q1,Q2,Q3) )
       => once(at_the_same_time(at(X,P),at(X,Q2))) ) )).

%--------------------------------------------------------------------------