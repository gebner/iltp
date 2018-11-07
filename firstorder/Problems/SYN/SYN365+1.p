%--------------------------------------------------------------------------
% File     : SYN365+1 : ILTP v1.1.0
% Domain   : Syntactic
% Problem  : Peter Andrews Problem X2116
% Version  : Especial.
% English  : 

% Refs     : [And86] Andrews (1986), An Introduction to Mathematical Logic 
%          : [And94] Andrews (1994), Email to G. Sutcliffe
% Source   : [And94]
% Names    : X2116 [And86]

% Status   : Theorem
% Rating   : 0.00 v2.1.0
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.50 v1.1
%
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    9 (   0 equality)
%            Maximal formula depth :    7 (   7 average)
%            Number of connectives :    8 (   0 ~  ;   0  |;   4  &)
%                                         (   0 <=>;   4 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    2 (   0 propositional; 1-2 arity)
%            Number of functors    :    2 (   0 constant; 1-1 arity)
%            Number of variables   :    5 (   0 singleton;   3 !;   2 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(x2116,conjecture,
    ( ( ! [X] : 
        ? [Y] : 
          ( big_p(X)
         => ( big_r(X,g(h(Y)))
            & big_p(Y) ) )
      & ! [W] : 
          ( big_p(W)
         => ( big_p(g(W))
            & big_p(h(W)) ) ) )
   => ! [X] : 
        ( big_p(X)
       => ? [Y] : 
            ( big_r(X,Y)
            & big_p(Y) ) ) )).

%--------------------------------------------------------------------------
