%--------------------------------------------------------------------------
% File     : SET751+4 : ILTP v1.1.0
% Domain   : Set Theory (Mappings)
% Problem  : If X is a subset of Y, then the image f(X) is a subset of f(Y)
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.73 v3.1.0, 0.78 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.50 v2.3.0, 0.33 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   29 (   1 unit)
%            Number of atoms       :  133 (   6 equality)
%            Maximal formula depth :   19 (   9 average)
%            Number of connectives :  106 (   2 ~  ;   2  |;  53  &)
%                                         (  30 <=>;  19 =>;   0 <=)
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
fof(thIIa01,conjecture,
    ( ! [F,A,B,X,Y] : 
        ( ( maps(F,A,B)
          & subset(X,A)
          & subset(Y,A)
          & subset(X,Y) )
       => subset(image2(F,X),image2(F,Y)) ) )).

%--------------------------------------------------------------------------