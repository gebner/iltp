%------------------------------------------------------------------------------
% File     : NUM312+1 : ILTP v1.1.0
% Domain   : Number Theory (RDN arithmetic)
% Problem  : only 2 + 3 = 5
% Version  : Especial.
% English  : 

% Refs     : 
% Source   : [TPTP]
% Names    : 

% Status   : Theorem
% Rating   : 0.82 v3.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :  402 ( 374 unit)
%            Number of atoms       :  474 (   6 equality)
%            Maximal formula depth :   19 (   1 average)
%            Number of connectives :   74 (   2 ~  ;   1  |;  43  &)
%                                         (   3 <=>;  25 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   11 (   0 propositional; 1-4 arity)
%            Number of functors    :  260 ( 256 constant; 0-2 arity)
%            Number of variables   :  122 (   0 singleton; 122 !;   0 ?)
%            Maximal term depth    :    5 (   2 average)

% Comments : 
%------------------------------------------------------------------------------
%----Include axioms for RDN arithmetic
include('Axioms/NUM005+0.ax').
include('Axioms/NUM005+1.ax').
include('Axioms/NUM005+2.ax').
%------------------------------------------------------------------------------
fof(sum_only_n2_n3_n5,conjecture,
    ( ! [X] : 
        ( sum(X,n3,n5)
       => X = n2 ) )).

%------------------------------------------------------------------------------
