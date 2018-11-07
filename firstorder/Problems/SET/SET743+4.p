%--------------------------------------------------------------------------
% File     : SET743+4 : ILTP v1.1.0
% Domain   : Set Theory (Mappings)
% Problem  : Problem on composition of mappings 8
% Version  : [Pas99] axioms.
% English  : Consider three mappings F from A to B,G from B to C,H from
%            C to A. If GoF and HoG are one-to-one, then G is one-to-one.

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
%            Number of atoms       :  134 (   6 equality)
%            Maximal formula depth :   19 (   9 average)
%            Number of connectives :  107 (   2 ~  ;   2  |;  54  &)
%                                         (  30 <=>;  19 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   16 (   0 propositional; 2-6 arity)
%            Number of functors    :   15 (   1 constant; 0-5 arity)
%            Number of variables   :  139 (   0 singleton; 130 !;   9 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
% Bugfixes : v2.2.1 - Bugfixes in SET006+1.ax.
%--------------------------------------------------------------------------
%----Include set theory definitions
include('Axioms/SET006+0.ax').
%----Include mappings axioms
include('Axioms/SET006+1.ax').
%--------------------------------------------------------------------------
fof(thII34,conjecture,
    ( ! [F,G,H,A,B,C] : 
        ( ( maps(F,A,B)
          & maps(G,B,C)
          & maps(H,C,A)
          & one_to_one(compose_function(G,F,A,B,C),A,C)
          & one_to_one(compose_function(H,G,B,C,A),B,A) )
       => one_to_one(G,B,C) ) )).

%--------------------------------------------------------------------------
