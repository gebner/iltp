%------------------------------------------------------------------------------
% File     : NUM352+1 : ILTP v1.1.1
% Domain   : Number Theory (RDN arithmetic)
% Problem  : ?XY (X+Y) != (X+Y)
% Version  : Especial.
% English  : 

% Refs     : 
% Source   : [TPTP]
% Names    : 

% Status   : CounterSatisfiable
% Rating   : 1.00 v3.1.0
%
% Status (intuit.) : Unsolved
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :  402 ( 374 unit)
%            Number of atoms       :  475 (   6 equality)
%            Maximal formula depth :   19 (   1 average)
%            Number of connectives :   76 (   3 ~  ;   1  |;  45  &)
%                                         (   3 <=>;  24 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   11 (   0 propositional; 1-4 arity)
%            Number of functors    :  260 ( 256 constant; 0-2 arity)
%            Number of variables   :  125 (   0 singleton; 121 !;   4 ?)
%            Maximal term depth    :    5 (   2 average)

% Comments : 
%------------------------------------------------------------------------------
%----Include axioms for RDN arithmetic
include('Axioms/NUM005+0.ax').
include('Axioms/NUM005+1.ax').
include('Axioms/NUM005+2.ax').
%------------------------------------------------------------------------------
fof(anti_unique,conjecture,
    ( ? [X,Y,Z1,Z2] : 
        ( sum(X,Y,Z1)
        & sum(X,Y,Z2)
        & Z1 != Z2 ) )).

%------------------------------------------------------------------------------
