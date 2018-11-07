%--------------------------------------------------------------------------
% File     : SYN072+1 : ILTP v1.1.1
% Domain   : Syntactic
% Problem  : Pelletier Problem 49
% Version  : Especial.
% English  : 

% Refs     : [Pel86] Pelletier (1986), Seventy-five Problems for Testing Au
%          : [Hah94] Haehnle (1994), Email to G. Sutcliffe
% Source   : [Hah94]
% Names    : Pelletier 49 [Pel86]

% Status   : Theorem
% Rating   : 0.11 v3.1.0, 0.17 v2.7.0, 0.00 v2.4.0, 0.00 v2.3.0, 0.33 v2.2.1, 0.00 v2.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :    5 (   4 unit)
%            Number of atoms       :    6 (   3 equality)
%            Maximal formula depth :    5 (   2 average)
%            Number of connectives :    2 (   1 ~  ;   1  |;   0  &)
%                                         (   0 <=>;   0 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    2 (   0 propositional; 1-2 arity)
%            Number of functors    :    2 (   2 constant; 0-0 arity)
%            Number of variables   :    4 (   0 singleton;   2 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Problem axioms
fof(pel49_1,axiom,
    ( ? [X,Y] : 
      ! [Z] : 
        ( Z = X
        | Z = Y ) )).

fof(pel49_2,axiom,
    ( big_p(a) )).

fof(pel49_3,axiom,
    ( big_p(b) )).

fof(pel49_4,axiom,
    (  a != b )).

fof(pel49,conjecture,
    ( ! [X] : big_p(X) )).

%--------------------------------------------------------------------------
