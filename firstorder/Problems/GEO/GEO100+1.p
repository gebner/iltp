%--------------------------------------------------------------------------
% File     : GEO100+1 : ILTP v1.1.0
% Domain   : Geometry (Oriented curves)
% Problem  : Subcurves with common endpoint can be complemented
% Version  : [EHK99] axioms.
% English  : Every proper sub-curve of an open curve that has a common 
%            endpoint with the open curve can be complemented by another 
%            curve so that their sum constitute the open curve.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 2.18 [KE99]
%            T2 [EHK99]

% Status   : Unknown
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   75 (  13 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   64 (   6 ~  ;   9  |;  27  &)
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
fof(theorem_2_18,conjecture,
    ( ! [C,C1,P] : 
        ( ( open(C)
          & part_of(C1,C)
          & C1 != C
          & end_point(P,C1)
          & end_point(P,C) )
       => ? [Q,C2] : 
            ( P != Q
            & meet(Q,C1,C2)
            & C = sum(C1,C2) ) ) )).

%--------------------------------------------------------------------------
