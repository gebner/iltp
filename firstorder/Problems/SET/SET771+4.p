%--------------------------------------------------------------------------
% File     : SET771+4 : ILTP v1.1.0
% Domain   : Set Theory (Equivalence relations)
% Problem  : Equality of images defines a equivalence relation 
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.91 v3.1.0, 0.89 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.75 v2.3.0, 0.67 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   34 (   1 unit)
%            Number of atoms       :  175 (   7 equality)
%            Maximal formula depth :   19 (   9 average)
%            Number of connectives :  144 (   3 ~  ;   2  |;  71  &)
%                                         (  36 <=>;  32 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 2-6 arity)
%            Number of functors    :   16 (   1 constant; 0-5 arity)
%            Number of variables   :  169 (   0 singleton; 156 !;  13 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
% Bugfixes : v2.2.1 - Bugfixes in SET006+1.ax.
%--------------------------------------------------------------------------
%----Include set theory definitions
include('Axioms/SET006+0.ax').
%----Include mappings axioms
include('Axioms/SET006+1.ax').
%----Include equivalence relation axioms
include('Axioms/SET006+2.ax').
%--------------------------------------------------------------------------
fof(thIII07,conjecture,
    ( ! [F,A,B,R] : 
        ( ( maps(F,A,B)
          & ! [X1,X2] : 
              ( ( member(X1,A)
                & member(X2,A) )
             => ( apply(R,X1,X2)
              <=> ? [Y] : 
                    ( member(Y,B)
                    & apply(F,X1,Y)
                    & apply(F,X2,Y) ) ) ) )
       => equivalence(R,A) ) )).

%--------------------------------------------------------------------------
