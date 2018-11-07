%--------------------------------------------------------------------------
% File     : SET708+4 : ILTP v1.1.0
% Domain   : Set Theory (Mappings)
% Problem  : The composition of mappings is unique
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
% Syntax   : Number of formulae    :   29 (   1 unit)
%            Number of atoms       :  133 (   6 equality)
%            Maximal formula depth :   19 (   9 average)
%            Number of connectives :  106 (   2 ~  ;   2  |;  53  &)
%                                         (  30 <=>;  19 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   16 (   0 propositional; 2-6 arity)
%            Number of functors    :   15 (   1 constant; 0-5 arity)
%            Number of variables   :  140 (   0 singleton; 131 !;   9 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : Once this theorem is proved, a functional notation may be used
%            to handle the composition of mappings
% Bugfixes : v2.2.1 - Bugfixes in SET006+1.ax.
%--------------------------------------------------------------------------
%----Include set theory definitions
include('Axioms/SET006+0.ax').
%----Include mappings axioms
include('Axioms/SET006+1.ax').
%--------------------------------------------------------------------------
fof(thII01a,conjecture,
    ( ! [F,G,H1,H2,A,B,C] : 
        ( ( maps(F,A,B)
          & maps(G,B,C)
          & compose_predicate(H1,G,F,A,B,C)
          & compose_predicate(H2,G,F,A,B,C) )
       => equal_maps(H1,H2,A,C) ) )).

%--------------------------------------------------------------------------
