%--------------------------------------------------------------------------
% File     : SET700+4 : ILTP v1.1.0
% Domain   : Set Theory (Naive)
% Problem  : Property of intersection and difference 2
% Version  : [Pas99] axioms.
% English  : A is a subset of B if and only if the intersection of A and 
%            of the difference of B is a subset of B.

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.45 v3.1.0, 0.56 v2.7.0, 0.67 v2.6.0, 0.71 v2.5.0, 0.88 v2.4.0, 0.25 v2.3.0, 0.00 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   12 (   1 unit)
%            Number of atoms       :   33 (   3 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :   23 (   2 ~  ;   2  |;   5  &)
%                                         (  11 <=>;   3 =>;   0 <=)
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
fof(thI34,conjecture,
    ( ! [A,B,E] : 
        ( ( subset(A,E)
          & subset(B,E) )
       => ( subset(A,B)
        <=> subset(intersection(A,difference(E,B)),B) ) ) )).

%--------------------------------------------------------------------------