%------------------------------------------------------------------------------
% File     : NUM330+1 : ILTP v1.1.0
% Domain   : Number Theory (RDN arithmetic)
% Problem  : XY (X+Y = 8) & X = 4 & Y = 4
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
%            Number of atoms       :  475 (   7 equality)
%            Maximal formula depth :   19 (   1 average)
%            Number of connectives :   75 (   2 ~  ;   1  |;  45  &)
%                                         (   3 <=>;  24 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   11 (   0 propositional; 1-4 arity)
%            Number of functors    :  260 ( 256 constant; 0-2 arity)
%            Number of variables   :  123 (   0 singleton; 121 !;   2 ?)
%            Maximal term depth    :    5 (   2 average)

% Comments : 
%------------------------------------------------------------------------------
%----Include axioms for RDN arithmetic
include('Axioms/NUM005+0.ax').
include('Axioms/NUM005+1.ax').
include('Axioms/NUM005+2.ax').
%------------------------------------------------------------------------------
fof(sum_n4_n4_n8,conjecture,
    ( ? [X,Y] : 
        ( sum(X,Y,n8)
        & X = n4
        & Y = n4 ) )).

%------------------------------------------------------------------------------
