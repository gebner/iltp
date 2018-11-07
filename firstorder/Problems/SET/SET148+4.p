%--------------------------------------------------------------------------
% File     : SET148+4 : ILTP v1.1.2
% Domain   : Set Theory (Naive)
% Problem  : A set intersection itself is itself 
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.36 v3.1.0, 0.44 v2.7.0, 0.33 v2.6.0, 0.57 v2.5.0, 0.62 v2.4.0, 0.25 v2.3.0, 0.00 v2.2.1
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.0.0
%
% Syntax   : Number of formulae    :   12 (   2 unit)
%            Number of atoms       :   30 (   3 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :   20 (   2 ~  ;   2  |;   4  &)
%                                         (  10 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   0 propositional; 2-2 arity)
%            Number of functors    :    9 (   1 constant; 0-2 arity)
%            Number of variables   :   29 (   0 singleton;  28 !;   1 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include set theory definitions
include('Axioms/SET006+0.ax').
%--------------------------------------------------------------------------
fof(thI13,conjecture,
    ( ! [A] : equal_set(intersection(A,A),A) )).

%--------------------------------------------------------------------------
