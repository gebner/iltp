%--------------------------------------------------------------------------
% File     : SET750+4 : ILTP v1.1.0
% Domain   : Set Theory (Mappings)
% Problem  : Property of isomorphism
% Version  : [Pas99] axioms.
% English  : If F is one-to-one, then F is an isomorphism if and only if
%            F and its inverse are increasing.

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.91 v3.1.0, 0.89 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.75 v2.3.0, 0.67 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   29 (   1 unit)
%            Number of atoms       :  133 (   6 equality)
%            Maximal formula depth :   19 (   9 average)
%            Number of connectives :  106 (   2 ~  ;   2  |;  52  &)
%                                         (  31 <=>;  19 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   16 (   0 propositional; 2-6 arity)
%            Number of functors    :   15 (   1 constant; 0-5 arity)
%            Number of variables   :  138 (   0 singleton; 129 !;   9 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
% Bugfixes : v2.2.1 - Bugfixes in SET006+1.ax.
%--------------------------------------------------------------------------
%----Include set theory definitions
include('Axioms/SET006+0.ax').
%----Include mappings axioms
include('Axioms/SET006+1.ax').
%--------------------------------------------------------------------------
fof(thII41,conjecture,
    ( ! [F,A,B,R,S] : 
        ( ( maps(F,A,B)
          & one_to_one(F,A,B) )
       => ( isomorphism(F,A,R,B,S)
        <=> ( increasing(F,A,R,B,S)
            & increasing(inverse_function(F,A,B),B,S,A,R) ) ) ) )).

%--------------------------------------------------------------------------
