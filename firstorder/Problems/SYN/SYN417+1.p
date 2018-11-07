%--------------------------------------------------------------------------
% File     : SYN417+1 : ILTP v1.1.1
% Domain   : Syntactic
% Problem  : Harrison's cute problem
% Version  : Especial.
% English  : 

% Refs     : [Har95] Harrison (1995), Email to G. Sutcliffe
% Source   : [Har95]
% Names    : 

% Status   : Theorem
% Rating   : 0.27 v3.1.0, 0.33 v2.6.0, 0.57 v2.5.0, 0.38 v2.4.0, 0.25 v2.3.0, 0.33 v2.2.1, 0.00 v2.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    6 (   6 equality)
%            Maximal formula depth :    6 (   6 average)
%            Number of connectives :    5 (   0 ~  ;   0  |;   2  &)
%                                         (   1 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    2 (   0 constant; 1-1 arity)
%            Number of variables   :    4 (   0 singleton;   2 !;   2 ?)
%            Maximal term depth    :    3 (   2 average)

% Comments : This problem was posted to the info-hol mailing list by Wishnu 
%            Prasetya.
%--------------------------------------------------------------------------
fof(cute,conjecture,
    ( ? [X] : 
        ( X = f(g(X))
        & ! [Y] : 
            ( Y = f(g(Y))
           => X = Y ) )
  <=> ? [X] : 
        ( X = g(f(X))
        & ! [Y] : 
            ( Y = g(f(Y))
           => X = Y ) ) )).

%--------------------------------------------------------------------------
