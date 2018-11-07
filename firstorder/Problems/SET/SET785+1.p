%--------------------------------------------------------------------------
% File     : SET785+1 : ILTP v1.1.2
% Domain   : Set Theory
% Problem  : Equivalence relation axioms for the SET006+0 set theory axioms
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v3.1.0, 0.83 v2.7.0, 0.67 v2.6.0, 1.00 v2.5.0
%
% Status (intuit.) : Unsolved (Problem negated)
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :   16 (   1 unit)
%            Number of atoms       :   68 (   4 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   55 (   3 ~  ;   2  |;  21  &)
%                                         (  15 <=>;  14 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   0 propositional; 2-3 arity)
%            Number of functors    :   10 (   1 constant; 0-3 arity)
%            Number of variables   :   57 (   0 singleton;  53 !;   4 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include Naive set theory axioms based on Goedel's set theory
include('Axioms/SET006+0.ax').
%----Include Equivalence relation axioms for the SET006+0 set theory axioms
include('Axioms/SET006+2.ax').
%--------------------------------------------------------------------------
