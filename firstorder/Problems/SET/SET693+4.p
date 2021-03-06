%--------------------------------------------------------------------------
% File     : SET693+4 : ILTP v1.1.2
% Domain   : Set Theory (Naive)
% Problem  : Property of union
% Version  : [Pas99] axioms.
% English  : B is a subset of A if and only if A is equal to the union of 
%            A and B.

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem 
% Rating   : 0.55 v3.1.0, 0.67 v2.6.0, 0.71 v2.5.0, 0.88 v2.4.0, 0.25 v2.3.0, 0.00 v2.2.1
%
% Status (intuit.) : Unsolved
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   12 (   1 unit)
%            Number of atoms       :   31 (   3 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :   21 (   2 ~  ;   2  |;   4  &)
%                                         (  11 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   0 propositional; 2-2 arity)
%            Number of functors    :    9 (   1 constant; 0-2 arity)
%            Number of variables   :   30 (   0 singleton;  29 !;   1 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include set theory definitions 
include('Axioms/SET006+0.ax').
%--------------------------------------------------------------------------
fof(thI20,conjecture,
    ( ! [A,B] : 
        ( equal_set(A,union(A,B))
      <=> subset(B,A) ) )).

%--------------------------------------------------------------------------
