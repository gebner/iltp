%--------------------------------------------------------------------------
% File     : GEO140+1 : ILTP v1.1.2
% Domain   : Geometry (Oriented curves)
% Problem  : Unique oppositely oriented curve 1
% Version  : [EHK99] axioms.
% English  : For every oriented line there is exactly one uniquely determined 
%            oriented line with the same underlying curve that orders the 
%            points in the opposite way.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 4.23 (1) [KE99]

% Status   : Unsolved
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   28 (   2 unit)
%            Number of atoms       :  115 (  16 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   95 (   8 ~  ;  10  |;  38  &)
%                                         (  21 <=>;  18 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   15 (   0 propositional; 1-4 arity)
%            Number of functors    :    2 (   0 constant; 1-2 arity)
%            Number of variables   :   98 (   0 singleton;  84 !;  14 ?)
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
fof(theorem_4_23_1,conjecture,
    ( ! [O,P,Q,R] : 
        ( ordered_by(O,P,Q)
       => ( ordered_by(O,R,P)
        <=> between(O,R,P,Q) ) ) )).

%--------------------------------------------------------------------------
