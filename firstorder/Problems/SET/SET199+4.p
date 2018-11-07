%--------------------------------------------------------------------------
% File     : SET199+4 : ILTP v1.1.2
% Domain   : Set Theory (Naive)
% Problem  : If Z (= X and Z (= Y, then Z (= X ^ Y
% Version  : [Pas99] axioms.
% English  : If Z is a subset of X and Y, then Z is a subset the intersection.

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.64 v3.1.0, 0.78 v2.7.0, 0.67 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.25 v2.3.0, 0.00 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   12 (   1 unit)
%            Number of atoms       :   32 (   3 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :   22 (   2 ~  ;   2  |;   5  &)
%                                         (  11 <=>;   2 =>;   0 <=)
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
fof(thI46,conjecture,
    ( ! [A,X,Y] : 
        ( ( subset(A,X)
          & subset(A,Y) )
      <=> subset(A,intersection(X,Y)) ) )).

%--------------------------------------------------------------------------
