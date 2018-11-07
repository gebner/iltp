%--------------------------------------------------------------------------
% File     : GEO098+1 : ILTP v1.1.1
% Domain   : Geometry (Oriented curves)
% Problem  : For closed curves, there are two complementary sub-curves
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 2.16 [KE99]

% Status   : Unsolved
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   74 (  12 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   62 (   5 ~  ;   9  |;  26  &)
%                                         (   9 <=>;  13 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    8 (   0 propositional; 1-3 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   58 (   0 singleton;  47 !;  11 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%--------------------------------------------------------------------------
fof(theorem_2_16,conjecture,
    ( ! [C,P,Q] : 
        ( ( closed(C)
          & incident_c(P,C)
          & incident_c(Q,C)
          & P != Q )
       => ? [C1,C2] : 
            ( meet(P,C1,C2)
            & meet(Q,C1,C2)
            & C = sum(C1,C2) ) ) )).

%--------------------------------------------------------------------------
