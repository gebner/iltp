%--------------------------------------------------------------------------
% File     : SET772+4 : ILTP v1.1.2
% Domain   : Set Theory (Equivalence relations)
% Problem  : Belonging of the same member of a partition is an equivalence 
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.91 v3.1.0, 0.89 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.75 v2.3.0, 0.67 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   76 (   4 equality)
%            Maximal formula depth :   13 (   7 average)
%            Number of connectives :   62 (   3 ~  ;   2  |;  24  &)
%                                         (  16 <=>;  17 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   0 propositional; 2-3 arity)
%            Number of functors    :   10 (   1 constant; 0-3 arity)
%            Number of variables   :   63 (   0 singleton;  58 !;   5 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include set theory definitions
include('Axioms/SET006+0.ax').
%----Include equivalence relation axioms
include('Axioms/SET006+2.ax').
%--------------------------------------------------------------------------
fof(thIII08,conjecture,
    ( ! [A,E,R] : 
        ( partition(A,E)
       => ( ! [X,Y] : 
              ( ( member(X,E)
                & member(Y,E) )
             => ( apply(R,X,Y)
              <=> ? [Z] : 
                    ( member(Z,A)
                    & member(X,Z)
                    & member(Y,Z) ) ) )
         => equivalence(R,E) ) ) )).

%--------------------------------------------------------------------------
