%--------------------------------------------------------------------------
% File     : GEO105+1 : ILTP v1.1.1
% Domain   : Geometry (Oriented curves)
% Problem  : If subcurves meet at an endpoint then there's a meeting
% Version  : [EHK99] axioms.
% English  : If two sub-curves of an open curve meet at a point and this 
%            point is an endpoint for another sub-curve then this sub-curve 
%            meets one of the former sub-curves at this point.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Proposition 2.23 [KE99]

% Status   : Theorem
% Rating   : 1.00 v2.7.0, 0.83 v2.5.0, 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   75 (  10 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   62 (   4 ~  ;  10  |;  26  &)
%                                         (   9 <=>;  13 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    8 (   0 propositional; 1-3 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   58 (   0 singleton;  49 !;   9 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%--------------------------------------------------------------------------
fof(proposition_2_23,conjecture,
    ( ! [C,C1,C2,C3,P] : 
        ( ( part_of(C1,C)
          & part_of(C2,C)
          & part_of(C3,C)
          & meet(P,C1,C2)
          & end_point(P,C3)
          & open(C) )
       => ( meet(P,C1,C3)
          | meet(P,C2,C3) ) ) )).

%--------------------------------------------------------------------------
