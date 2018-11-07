%--------------------------------------------------------------------------
% File     : SET759+4 : ILTP v1.1.0
% Domain   : Set Theory (Mappings)
% Problem  : Composition of images 1
% Version  : [Pas99] axioms.
% English  : If F is injective, then the inverse image of the image of X is 
%            equal to X.

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
%            Number of atoms       :  132 (   6 equality)
%            Maximal formula depth :   19 (   9 average)
%            Number of connectives :  105 (   2 ~  ;   2  |;  52  &)
%                                         (  30 <=>;  19 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   16 (   0 propositional; 2-6 arity)
%            Number of functors    :   15 (   1 constant; 0-5 arity)
%            Number of variables   :  137 (   0 singleton; 128 !;   9 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
% Bugfixes : v2.2.1 - Bugfixes in SET006+1.ax.
%--------------------------------------------------------------------------
%----Include set theory definitions
include('Axioms/SET006+0.ax').
%----Include mappings axioms
include('Axioms/SET006+1.ax').
%--------------------------------------------------------------------------
fof(thIIa09,conjecture,
    ( ! [F,A,B,X] : 
        ( ( maps(F,A,B)
          & injective(F,A,B)
          & subset(X,A) )
       => equal_set(inverse_image3(F,image3(F,X,B),A),X) ) )).

%--------------------------------------------------------------------------