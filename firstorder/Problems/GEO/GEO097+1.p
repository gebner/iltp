%--------------------------------------------------------------------------
% File     : GEO097+1 : ILTP v1.1.2
% Domain   : Geometry (Oriented curves)
% Problem  : A subcurves connects any two points on a curve
% Version  : [EHK99] axioms.
% English  : For any two points on a curve there is a sub-curve that connects 
%            these two points, that is to say these points are the endpoints 
%            of the sub-curve.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 2.15 [KE99]
%          : T1 [EHK99]

% Status   : Unsolved
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   73 (  11 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   61 (   5 ~  ;   9  |;  25  &)
%                                         (   9 <=>;  13 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    8 (   0 propositional; 1-3 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   57 (   0 singleton;  47 !;  10 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%--------------------------------------------------------------------------
fof(theorem_2_15,conjecture,
    ( ! [P,Q,C] : 
        ( ( P != Q
          & incident_c(P,C)
          & incident_c(Q,C) )
       => ? [Cpp] : 
            ( part_of(Cpp,C)
            & end_point(P,Cpp)
            & end_point(Q,Cpp) ) ) )).

%--------------------------------------------------------------------------
