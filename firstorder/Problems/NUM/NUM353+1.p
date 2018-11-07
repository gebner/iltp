%------------------------------------------------------------------------------
% File     : NUM353+1 : ILTP v1.1.2
% Domain   : Number Theory (RDN arithmetic)
% Problem  : XYZ ((X+Y)+Z) != (Z+X)+Y)
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
%            Number of atoms       :  477 (   6 equality)
%            Maximal formula depth :   19 (   2 average)
%            Number of connectives :   78 (   3 ~  ;   1  |;  47  &)
%                                         (   3 <=>;  24 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   11 (   0 propositional; 1-4 arity)
%            Number of functors    :  260 ( 256 constant; 0-2 arity)
%            Number of variables   :  128 (   0 singleton; 121 !;   7 ?)
%            Maximal term depth    :    5 (   2 average)

% Comments : 
%------------------------------------------------------------------------------
%----Include axioms for RDN arithmetic
include('Axioms/NUM005+0.ax').
include('Axioms/NUM005+1.ax').
include('Axioms/NUM005+2.ax').
%------------------------------------------------------------------------------
fof(anti_associativity,conjecture,
    ( ? [X,Y,Z,Z1,Z2,Z3,Z4] : 
        ( sum(X,Y,Z1)
        & sum(Z1,Z,Z2)
        & sum(Z,X,Z3)
        & sum(Z3,Y,Z4)
        & Z2 != Z4 ) )).

%------------------------------------------------------------------------------
