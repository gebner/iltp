%--------------------------------------------------------------------------
% File     : SYN076+1 : ILTP v1.1.1
% Domain   : Syntactic
% Problem  : Pelletier Problem 53
% Version  : Especial.
% English  : 

% Refs     : [Pel86] Pelletier (1986), Seventy-five Problems for Testing Au
%          : [Hah94] Haehnle (1994), Email to G. Sutcliffe
% Source   : [Hah94]
% Names    : Pelletier 53 [Pel86]

% Status   : Theorem
% Rating   : 0.78 v3.1.0, 0.83 v2.7.0, 0.67 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.50 v2.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :    2 (   0 unit)
%            Number of atoms       :    9 (   7 equality)
%            Maximal formula depth :    8 (   7 average)
%            Number of connectives :    8 (   1 ~  ;   1  |;   1  &)
%                                         (   5 <=>;   0 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    2 (   0 propositional; 2-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   11 (   0 singleton;   5 !;   6 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Problem axioms
fof(pel53_1,axiom,
    ( ? [X,Y] : 
        ( X != Y
        & ! [Z] : 
            ( Z = X
            | Z = Y ) ) )).

fof(pel53,conjecture,
    ( ? [Z] : 
      ! [X] : 
        ( ? [W] : 
          ! [Y] : 
            ( big_f(X,Y)
          <=> Y = W )
      <=> X = Z )
  <=> ? [W1] : 
      ! [Y1] : 
        ( ? [Z1] : 
          ! [X1] : 
            ( big_f(X1,Y1)
          <=> X1 = Z1 )
      <=> Y1 = W1 ) )).

%--------------------------------------------------------------------------
