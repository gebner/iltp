%--------------------------------------------------------------------------
% File     : GEO102+1 : ILTP v1.1.0
% Domain   : Geometry (Oriented curves)
% Problem  : Common endpoint of subcurves means inclusion
% Version  : [EHK99] axioms.
% English  : If two sub-curves of one curve have a common endpoint and 
%            include a sub-curve starting at this endpoint, then one of the 
%            two sub-curves is included in the other.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 2.20 [KE99]

% Status   : Unknown
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   76 (  10 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   63 (   4 ~  ;  10  |;  27  &)
%                                         (   9 <=>;  13 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    8 (   0 propositional; 1-3 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   58 (   0 singleton;  46 !;  12 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%--------------------------------------------------------------------------
fof(theorem_2_20,conjecture,
    ( ! [C1,C2] : 
        ( ( ? [C3,P] : 
              ( part_of(C3,C1)
              & part_of(C3,C2)
              & end_point(P,C1)
              & end_point(P,C2)
              & end_point(P,C3) )
          & ? [C] : 
              ( part_of(C1,C)
              & part_of(C2,C) ) )
       => ( part_of(C1,C2)
          | part_of(C2,C1) ) ) )).

%--------------------------------------------------------------------------
