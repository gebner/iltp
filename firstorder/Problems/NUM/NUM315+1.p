%------------------------------------------------------------------------------
% File     : NUM315+1 : ILTP v1.1.2
% Domain   : Number Theory (RDN arithmetic)
% Problem  : -2 + -5 = -7
% Version  : Especial.
% English  : 

% Refs     : 
% Source   : [TPTP]
% Names    : 

% Status   : Theorem
% Rating   : 0.82 v3.1.0
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1.0
%
% Syntax   : Number of formulae    :  402 ( 375 unit)
%            Number of atoms       :  473 (   5 equality)
%            Maximal formula depth :   19 (   1 average)
%            Number of connectives :   73 (   2 ~  ;   1  |;  43  &)
%                                         (   3 <=>;  24 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   11 (   0 propositional; 1-4 arity)
%            Number of functors    :  260 ( 256 constant; 0-2 arity)
%            Number of variables   :  121 (   0 singleton; 121 !;   0 ?)
%            Maximal term depth    :    5 (   2 average)

% Comments : 
%------------------------------------------------------------------------------
%----Include axioms for RDN arithmetic
include('Axioms/NUM005+0.ax').
include('Axioms/NUM005+1.ax').
include('Axioms/NUM005+2.ax').
%------------------------------------------------------------------------------
fof(sum_nn2_nn5_nn7,conjecture,
    ( sum(nn2,nn5,nn7) )).

%------------------------------------------------------------------------------
