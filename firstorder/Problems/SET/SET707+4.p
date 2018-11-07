%--------------------------------------------------------------------------
% File     : SET707+4 : ILTP v1.1.1
% Domain   : Set Theory (Naive)
% Problem  : Components of equal ordered pairs are equal 
% Version  : [Pas99] axioms.
% English  : If {{A},{A,B}} = {{U},{U,V}} then A = U and B = V.

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.64 v3.1.0, 0.78 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.75 v2.3.0, 0.67 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   12 (   1 unit)
%            Number of atoms       :   32 (   5 equality)
%            Maximal formula depth :    7 (   6 average)
%            Number of connectives :   22 (   2 ~  ;   2  |;   5  &)
%                                         (  10 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   0 propositional; 2-2 arity)
%            Number of functors    :    9 (   1 constant; 0-2 arity)
%            Number of variables   :   32 (   0 singleton;  31 !;   1 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include set theory definitions
include('Axioms/SET006+0.ax').
%--------------------------------------------------------------------------
fof(thI50,conjecture,
    ( ! [A,B,U,V] : 
        ( equal_set(unordered_pair(singleton(A),unordered_pair(A,B)),unordered_pair(singleton(U),unordered_pair(U,V)))
       => ( A = U
          & B = V ) ) )).

%--------------------------------------------------------------------------
