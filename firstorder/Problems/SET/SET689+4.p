%--------------------------------------------------------------------------
% File     : SET689+4 : ILTP v1.1.0
% Domain   : Set Theory (Naive)
% Problem  : Property of subset 
% Version  : [Pas99] axioms.
% English  : If A is a subset of B,B a subset of C and C a subset of A,
%            then A is equal to C.

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.09 v3.1.0, 0.00 v2.5.0, 0.12 v2.4.0, 0.00 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   12 (   1 unit)
%            Number of atoms       :   33 (   3 equality)
%            Maximal formula depth :    7 (   6 average)
%            Number of connectives :   23 (   2 ~  ;   2  |;   6  &)
%                                         (  10 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   0 propositional; 2-2 arity)
%            Number of functors    :    9 (   1 constant; 0-2 arity)
%            Number of variables   :   31 (   0 singleton;  30 !;   1 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include set theory definitions
include('Axioms/SET006+0.ax').
%--------------------------------------------------------------------------
fof(thI05,conjecture,
    ( ! [A,B,C] : 
        ( ( subset(A,B)
          & subset(B,C)
          & subset(C,A) )
       => equal_set(A,C) ) )).

%--------------------------------------------------------------------------