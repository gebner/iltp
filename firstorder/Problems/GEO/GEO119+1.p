%--------------------------------------------------------------------------
% File     : GEO119+1 : ILTP v1.1.1
% Domain   : Geometry (Oriented curves)
% Problem  : Oriented curve starting point is endpoint of underlying curve
% Version  : [EHK99] axioms.
% English  : 

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 4.6 (1) [KE99]

% Status   : Theorem
% Rating   : 1.00 v3.1.0, 0.89 v2.7.0, 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   28 (   2 unit)
%            Number of atoms       :  114 (  16 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   94 (   8 ~  ;  10  |;  38  &)
%                                         (  20 <=>;  18 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   14 (   0 propositional; 1-4 arity)
%            Number of functors    :    2 (   0 constant; 1-2 arity)
%            Number of variables   :   96 (   0 singleton;  82 !;  14 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%----Include axioms of betweenness for simple curves
include('Axioms/GEO004+1.ax').
%----Include oriented curve axioms
include('Axioms/GEO004+2.ax').
%--------------------------------------------------------------------------
fof(theorem_4_6_1,conjecture,
    ( ! [O,P] : 
        ( start_point(P,O)
       => end_point(P,underlying_curve(O)) ) )).

%--------------------------------------------------------------------------
