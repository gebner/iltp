%--------------------------------------------------------------------------
% File     : SET720+4 : ILTP v1.1.2
% Domain   : Set Theory (Mappings)
% Problem  : The inverse of the inverse of a mapping is equal to the mapping
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.64 v3.1.0, 0.78 v2.7.0, 0.67 v2.6.0, 0.71 v2.5.0, 0.88 v2.4.0, 0.50 v2.3.0, 0.33 v2.2.1
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
%            Number of variables   :  136 (   0 singleton; 127 !;   9 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
% Bugfixes : v2.2.1 - Bugfixes in SET006+1.ax.
%--------------------------------------------------------------------------
%----Include set theory definitions
include('Axioms/SET006+0.ax').
%----Include mappings axioms
include('Axioms/SET006+1.ax').
%--------------------------------------------------------------------------
fof(thII11,conjecture,
    ( ! [F,A,B] : 
        ( ( maps(F,A,B)
          & one_to_one(F,A,B) )
       => equal_maps(inverse_function(inverse_function(F,A,B),B,A),F,A,B) ) )).

%--------------------------------------------------------------------------
