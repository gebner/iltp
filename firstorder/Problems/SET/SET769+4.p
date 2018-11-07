%--------------------------------------------------------------------------
% File     : SET769+4 : ILTP v1.1.1
% Domain   : Set Theory (Equivalence relations)
% Problem  : Equality of equivalence classes 2
% Version  : [Pas99] axioms.
% English  : Two equivalence classes are equal if and only if they are not
%          : disjoint.

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
%            Number of atoms       :   73 (   4 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   60 (   4 ~  ;   2  |;  23  &)
%                                         (  16 <=>;  15 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   0 propositional; 2-3 arity)
%            Number of functors    :   10 (   1 constant; 0-3 arity)
%            Number of variables   :   61 (   0 singleton;  57 !;   4 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include set theory definitions
include('Axioms/SET006+0.ax').
%----Include equivalence relation axioms
include('Axioms/SET006+2.ax').
%--------------------------------------------------------------------------
fof(thIII05,conjecture,
    ( ! [E,R,A,B] : 
        ( ( equivalence(R,E)
          & member(A,E)
          & member(B,E) )
       => ( equal_set(equivalence_class(A,E,R),equivalence_class(B,E,R))
        <=> ~ disjoint(equivalence_class(A,E,R),equivalence_class(B,E,R)) ) ) )).

%--------------------------------------------------------------------------
