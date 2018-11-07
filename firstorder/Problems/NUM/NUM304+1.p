%------------------------------------------------------------------------------
% File     : NUM304+1 : ILTP v1.1.1
% Domain   : Number Theory (RDN arithmetic)
% Problem  : ? != 12
% Version  : Especial.
% English  : 

% Refs     : 
% Source   : [TPTP]
% Names    : 

% Status   : Theorem
% Rating   : 0.36 v3.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :  402 ( 375 unit)
%            Number of atoms       :  473 (   6 equality)
%            Maximal formula depth :   19 (   1 average)
%            Number of connectives :   74 (   3 ~  ;   1  |;  43  &)
%                                         (   3 <=>;  24 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   11 (   0 propositional; 1-4 arity)
%            Number of functors    :  260 ( 256 constant; 0-2 arity)
%            Number of variables   :  122 (   0 singleton; 121 !;   1 ?)
%            Maximal term depth    :    5 (   2 average)

% Comments : 
%------------------------------------------------------------------------------
%----Include axioms for RDN arithmetic
include('Axioms/NUM005+0.ax').
include('Axioms/NUM005+1.ax').
include('Axioms/NUM005+2.ax').
%------------------------------------------------------------------------------
fof(something_not_n12,conjecture,
    ( ? [X] : X != n12 )).

%------------------------------------------------------------------------------
