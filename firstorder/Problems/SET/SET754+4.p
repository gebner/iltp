%--------------------------------------------------------------------------
% File     : SET754+4 : ILTP v1.1.2
% Domain   : Set Theory (Mappings)
% Problem  : C is a subset of the inverse image of the image of C 
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.82 v3.1.0, 0.78 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.50 v2.3.0, 0.33 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   29 (   1 unit)
%            Number of atoms       :  131 (   6 equality)
%            Maximal formula depth :   19 (   9 average)
%            Number of connectives :  104 (   2 ~  ;   2  |;  51  &)
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
fof(thIIa04,conjecture,
    ( ! [F,A,B,C] : 
        ( ( maps(F,A,B)
          & subset(C,A) )
       => subset(C,inverse_image2(F,image2(F,C))) ) )).

%--------------------------------------------------------------------------
