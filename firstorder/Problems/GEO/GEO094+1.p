%--------------------------------------------------------------------------
% File     : GEO094+1 : ILTP v1.1.1
% Domain   : Geometry (Oriented curves)
% Problem  : Meeting point is not an endpoint of contianing curve
% Version  : [EHK99] axioms.
% English  : A meeting point of two curves is not an endpoint of any curve 
%            that includes both as sub-curves.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Proposition 2.14 (3) [KE99]

% Status   : Theorem
% Rating   : 0.36 v3.1.0, 0.44 v2.7.0, 0.33 v2.6.0, 0.50 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   71 (  10 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   59 (   5 ~  ;   9  |;  23  &)
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
fof(proposition_2_14_3,conjecture,
    ( ! [C,C1,C2,P] : 
        ( ( meet(P,C1,C2)
          & part_of(C1,C)
          & part_of(C2,C) )
       => ~ end_point(P,C) ) )).

%--------------------------------------------------------------------------
