%--------------------------------------------------------------------------
% File     : SET732+4 : ILTP v1.1.2
% Domain   : Set Theory (Mappings)
% Problem  : Property of restriction 3
% Version  : [Pas99] axioms.
% English  : If F is a mapping from A to B,and G equal to F on A and 
%            C =image2(F,A) and F is injective, then G is one-to-one.

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.91 v3.1.0, 0.89 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.75 v2.3.0, 0.67 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   29 (   1 unit)
%            Number of atoms       :  137 (   7 equality)
%            Maximal formula depth :   19 (   9 average)
%            Number of connectives :  110 (   2 ~  ;   2  |;  55  &)
%                                         (  31 <=>;  20 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   16 (   0 propositional; 2-6 arity)
%            Number of functors    :   15 (   1 constant; 0-5 arity)
%            Number of variables   :  140 (   0 singleton; 131 !;   9 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
% Bugfixes : v2.2.1 - Bugfixes in SET006+1.ax.
%--------------------------------------------------------------------------
%----Include set theory definitions
include('Axioms/SET006+0.ax').
%----Include mappings axioms
include('Axioms/SET006+1.ax').
%--------------------------------------------------------------------------
fof(thII23,conjecture,
    ( ! [F,G,A,B,C] : 
        ( ( maps(F,A,B)
          & subset(C,B)
          & image2(F,A) = C
          & ! [X,Y] : 
              ( ( member(X,A)
                & member(Y,C) )
             => ( apply(G,X,Y)
              <=> apply(F,X,Y) ) )
          & injective(F,A,B) )
       => one_to_one(G,A,C) ) )).

%--------------------------------------------------------------------------
