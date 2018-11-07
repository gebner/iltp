%------------------------------------------------------------------------------
% File     : NUM343+1 : ILTP v1.1.2
% Domain   : Number Theory (RDN arithmetic)
% Problem  : -1 < ? & ? < 1 => 21 + ? = 21
% Version  : Especial.
% English  : 

% Refs     : 
% Source   : [TPTP]
% Names    : 

% Status   : Theorem
% Rating   : 0.27 v3.1.0
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1.0
%
% Syntax   : Number of formulae    :  402 ( 374 unit)
%            Number of atoms       :  475 (   5 equality)
%            Maximal formula depth :   19 (   1 average)
%            Number of connectives :   75 (   2 ~  ;   1  |;  44  &)
%                                         (   3 <=>;  25 =>;   0 <=)
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
fof(sum_something_n0_samething,conjecture,
    ( ? [X] : 
        ( ( less(nn1,X)
          & less(X,n1) )
       => sum(n21,X,n21) ) )).

%------------------------------------------------------------------------------
