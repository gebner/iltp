%--------------------------------------------------------------------------
% File     : SYN551+2 : ILTP v1.1.0
% Domain   : Syntactic (Translated)
% Problem  : Cute Little Problem
% Version  : Especial.
% English  : 

% Refs     : [Pra93] Prasetya (1993), How to get FAUST?
%          : [Jon93] Jones (1993), Little Problem, Solved by Otter
% Source   : [Pra93]
% Names    : 

% Status   : Theorem
% Rating   : 0.45 v3.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    4 (   4 equality)
%            Maximal formula depth :    5 (   5 average)
%            Number of connectives :    3 (   0 ~  ;   0  |;   0  &)
%                                         (   3 <=>;   0 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    2 (   0 constant; 1-1 arity)
%            Number of variables   :    4 (   0 singleton;   2 !;   2 ?)
%            Maximal term depth    :    3 (   2 average)

% Comments : This is a HOL problem translated to FOF. The original HOL is
%            (?!x. x=f(g x)) = (?!y. y=g(f y)), where ?! means "there exists
%            a unique".
% Bugfixes : v2.3.0 - Equality axioms added.
%          : v3.1.0 - Removed remaining equality axioms (for TPTP v3.0.0)
%--------------------------------------------------------------------------
fof(prove_this_cute_thing,conjecture,
    ( ? [X] : 
      ! [Y] : 
        ( Y = f(g(Y))
      <=> X = Y )
  <=> ? [X] : 
      ! [Y] : 
        ( Y = g(f(Y))
      <=> X = Y ) )).

%--------------------------------------------------------------------------
