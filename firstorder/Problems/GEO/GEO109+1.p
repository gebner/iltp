%--------------------------------------------------------------------------
% File     : GEO109+1 : ILTP v1.1.1
% Domain   : Geometry (Oriented curves)
% Problem  : Every endpoint of an open curve is not between any other points
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 3.6 [KE99]

% Status   : Theorem
% Rating   : 1.00 v3.1.0, 0.89 v2.7.0, 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   18 (   1 unit)
%            Number of atoms       :   77 (  11 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   65 (   6 ~  ;   9  |;  26  &)
%                                         (  11 <=>;  13 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   0 propositional; 1-4 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   62 (   0 singleton;  50 !;  12 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%----Include axioms of betweenness for simple curves
include('Axioms/GEO004+1.ax').
%--------------------------------------------------------------------------
fof(theorem_3_6,conjecture,
    ( ! [C,P] : 
        ( open(C)
       => ( end_point(P,C)
        <=> ( incident_c(P,C)
            & ~ ( ? [Q,R] : between_c(C,Q,P,R) ) ) ) ) )).

%--------------------------------------------------------------------------
