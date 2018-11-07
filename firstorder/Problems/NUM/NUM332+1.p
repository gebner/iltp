%------------------------------------------------------------------------------
% File     : NUM332+1 : ILTP v1.1.0
% Domain   : Number Theory (RDN arithmetic)
% Problem  : (2 + 3) + 6 = 2 + (3 + 6) 
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
%            Number of atoms       :  477 (   6 equality)
%            Maximal formula depth :   19 (   2 average)
%            Number of connectives :   77 (   2 ~  ;   1  |;  46  &)
%                                         (   3 <=>;  25 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   11 (   0 propositional; 1-4 arity)
%            Number of functors    :  260 ( 256 constant; 0-2 arity)
%            Number of variables   :  125 (   0 singleton; 125 !;   0 ?)
%            Maximal term depth    :    5 (   2 average)

% Comments : 
%------------------------------------------------------------------------------
%----Include axioms for RDN arithmetic
include('Axioms/NUM005+0.ax').
include('Axioms/NUM005+1.ax').
include('Axioms/NUM005+2.ax').
%------------------------------------------------------------------------------
fof(associative_sum,conjecture,
    ( ! [Z1,Z2,Z3,Z4] : 
        ( ( sum(n2,n3,Z1)
          & sum(Z1,n6,Z2)
          & sum(n3,n6,Z3)
          & sum(n2,Z3,Z4) )
       => Z2 = Z4 ) )).

%------------------------------------------------------------------------------
