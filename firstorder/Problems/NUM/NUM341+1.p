%------------------------------------------------------------------------------
% File     : NUM341+1 : ILTP v1.1.0
% Domain   : Number Theory (RDN arithmetic)
% Problem  : x + y = z <=> z - y = x & z - x = y
% Version  : Especial.
% English  : 

% Refs     : 
% Source   : [TPTP]
% Names    : 

% Status   : Theorem
% Rating   : 0.36 v3.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :  402 ( 374 unit)
%            Number of atoms       :  475 (   5 equality)
%            Maximal formula depth :   19 (   1 average)
%            Number of connectives :   75 (   2 ~  ;   1  |;  44  &)
%                                         (   4 <=>;  24 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   11 (   0 propositional; 1-4 arity)
%            Number of functors    :  260 ( 256 constant; 0-2 arity)
%            Number of variables   :  124 (   0 singleton; 121 !;   3 ?)
%            Maximal term depth    :    5 (   2 average)

% Comments : 
%------------------------------------------------------------------------------
%----Include axioms for RDN arithmetic
include('Axioms/NUM005+0.ax').
include('Axioms/NUM005+1.ax').
include('Axioms/NUM005+2.ax').
%------------------------------------------------------------------------------
%----Making this universal quantifier is too hard
fof(add_same_as_subtract,conjecture,
    ( ? [X,Y,Z] : 
        ( sum(X,Y,Z)
      <=> ( difference(Z,Y,X)
          & difference(Z,X,Y) ) ) )).

%------------------------------------------------------------------------------
