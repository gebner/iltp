%--------------------------------------------------------------------------
% File     : GEO090+1 : ILTP v1.1.0
% Domain   : Geometry (Oriented curves)
% Problem  : Meeting point of curves on a subcurve
% Version  : [EHK99] axioms.
% English  : If a point P is a meeting point of two curves and lies on a 
%            sub-curve of one of the two curves then P is also meeting point 
%            of the sub-curve and the other curve.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Corollary 2.12 [KE99]

% Status   : Theorem
% Rating   : 0.91 v3.1.0, 0.89 v2.7.0, 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   71 (  10 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   58 (   4 ~  ;   9  |;  23  &)
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
fof(corollary_2_12,conjecture,
    ( ! [C1,C2,Cpp,P] : 
        ( ( part_of(C2,C1)
          & incident_c(P,C2)
          & meet(P,C1,Cpp) )
       => meet(P,C2,Cpp) ) )).

%--------------------------------------------------------------------------
