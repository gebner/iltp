%--------------------------------------------------------------------------
% File     : GEO093+1 : ILTP v1.1.1
% Domain   : Geometry (Oriented curves)
% Problem  : Sum of meeting open curves is open
% Version  : [EHK99] axioms.
% English  : If two open sub-curves of an open curve meet, then their sum 
%            is also open.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Proposition 2.14 (2) [KE99]

% Status   : Theorem
% Rating   : 0.73 v3.1.0, 0.78 v2.7.0, 0.67 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   72 (  10 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   59 (   4 ~  ;   9  |;  24  &)
%                                         (   9 <=>;  13 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    8 (   0 propositional; 1-3 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   57 (   0 singleton;  48 !;   9 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%--------------------------------------------------------------------------
fof(proposition_2_14_2,conjecture,
    ( ! [C,C1,C2,P] : 
        ( ( open(C)
          & part_of(C1,C)
          & part_of(C2,C)
          & meet(P,C1,C2) )
       => open(sum(C1,C2)) ) )).

%--------------------------------------------------------------------------
