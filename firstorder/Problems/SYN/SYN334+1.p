%--------------------------------------------------------------------------
% File     : SYN334+1 : ILTP v1.1.2
% Domain   : Syntactic
% Problem  : Church problem 46.14 (6)
% Version  : Especial.
% English  : 

% Refs     : [Chu56] Church (1956), Introduction to Mathematical Logic I
% Source   : [Chu56]
% Names    : 46.14 (6) [Chu56]

% Status   : Theorem
% Rating   : 0.33 v3.1.0, 0.17 v2.7.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    8 (   0 equality)
%            Maximal formula depth :    8 (   8 average)
%            Number of connectives :    7 (   0 ~  ;   0  |;   0  &)
%                                         (   3 <=>;   4 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    2 (   0 propositional; 2-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    3 (   0 singleton;   1 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(church_46_14_6,conjecture,
    ( ? [X,Y] : 
      ! [Z] : 
        ( ( big_f(X,Y)
         => ( big_f(X,Z)
          <=> big_g(Y,Z) ) )
       => ( ( big_f(X,Y)
          <=> ( big_f(Z,Z)
             => big_g(Z,Z) ) )
         => ( big_g(X,Y)
          <=> big_g(Z,Z) ) ) ) )).

%--------------------------------------------------------------------------
