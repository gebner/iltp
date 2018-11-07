%--------------------------------------------------------------------------
% File     : SET155+4 : ILTP v1.1.2
% Domain   : Set Theory (Naive)
% Problem  : De Morgans law 1
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.91 v3.1.0, 0.89 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.50 v2.3.0, 0.33 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   12 (   1 unit)
%            Number of atoms       :   32 (   3 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :   22 (   2 ~  ;   2  |;   5  &)
%                                         (  10 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   0 propositional; 2-2 arity)
%            Number of functors    :    9 (   1 constant; 0-2 arity)
%            Number of variables   :   31 (   0 singleton;  30 !;   1 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include set theory definitions
include('Axioms/SET006+0.ax').
%--------------------------------------------------------------------------
fof(thI26,conjecture,
    ( ! [A,B,E] : 
        ( ( subset(A,E)
          & subset(B,E) )
       => equal_set(difference(E,union(A,B)),intersection(difference(E,A),difference(E,B))) ) )).

%--------------------------------------------------------------------------
