%--------------------------------------------------------------------------
% File     : GEO080+1 : ILTP v1.1.1
% Domain   : Geometry (Oriented curves)
% Problem  : Reflexivity of part_of
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 2.5 [KE99] 

% Status   : Theorem
% Rating   : 0.18 v3.1.0, 0.11 v2.7.0, 0.00 v2.4.0
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1.0, 0.50 v1.0.0
%
% Syntax   : Number of formulae    :   17 (   2 unit)
%            Number of atoms       :   68 (  10 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   55 (   4 ~  ;   9  |;  21  &)
%                                         (   9 <=>;  12 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    8 (   0 propositional; 1-3 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   54 (   0 singleton;  45 !;   9 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%--------------------------------------------------------------------------
fof(prove_reflexivity,conjecture,
    ( ! [C] : part_of(C,C) )).

%--------------------------------------------------------------------------
