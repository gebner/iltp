%--------------------------------------------------------------------------
% File     : GEO088+1 : ILTP v1.1.1
% Domain   : Geometry (Oriented curves)
% Problem  : Endpoint of subcurve or curve
% Version  : [EHK99] axioms.
% English  : If an endpoint of a given curve lies on a sub-curve then it is 
%            also an endpoint of this sub-curve

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 2.10

% Status   : Theorem
% Rating   : 0.91 v3.1.0, 0.78 v2.7.0, 0.83 v2.5.0, 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   71 (  10 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   58 (   4 ~  ;   9  |;  23  &)
%                                         (   9 <=>;  13 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    8 (   0 propositional; 1-3 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   56 (   0 singleton;  47 !;   9 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%--------------------------------------------------------------------------
fof(theorem_2_10,conjecture,
    ( ! [C,Cpp,P] : 
        ( ( part_of(Cpp,C)
          & end_point(P,C)
          & incident_c(P,Cpp) )
       => end_point(P,Cpp) ) )).

%--------------------------------------------------------------------------
