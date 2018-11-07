%--------------------------------------------------------------------------
% File     : SET372+4 : ILTP v1.1.2
% Domain   : Set Theory (Naive)
% Problem  : Power set distributes over intersection
% Version  : [Pas99] axioms.
% English  : The power_set of the intersection of A and B is equal to the 
%            intersection of the power_set of A and the power_set of B.

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.91 v3.1.0, 0.89 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.75 v2.3.0, 0.67 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   12 (   2 unit)
%            Number of atoms       :   30 (   3 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :   20 (   2 ~  ;   2  |;   4  &)
%                                         (  10 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   0 propositional; 2-2 arity)
%            Number of functors    :    9 (   1 constant; 0-2 arity)
%            Number of variables   :   30 (   0 singleton;  29 !;   1 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include set theory definitions
include('Axioms/SET006+0.ax').
%--------------------------------------------------------------------------
fof(thI21,conjecture,
    ( ! [A,B] : equal_set(power_set(intersection(A,B)),intersection(power_set(A),power_set(B))) )).

%--------------------------------------------------------------------------
