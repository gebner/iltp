%--------------------------------------------------------------------------
% File     : GEO136+1 : ILTP v1.1.1
% Domain   : Geometry (Oriented curves)
% Problem  : Underlying curve and one pair of points sufficient for ordering
% Version  : [EHK99] axioms.
% English  : The underlying curve and one pair of points are sufficient for 
%            the ordering of the points on the oriented curve.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 4.19 [KE99]

% Status   : Unsolved
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   28 (   2 unit)
%            Number of atoms       :  126 (  20 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :  106 (   8 ~  ;  18  |;  41  &)
%                                         (  21 <=>;  18 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   15 (   0 propositional; 1-4 arity)
%            Number of functors    :    2 (   0 constant; 1-2 arity)
%            Number of variables   :   99 (   0 singleton;  85 !;  14 ?)
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
fof(theorem_4_19,conjecture,
    ( ! [O,P,Q] : 
        ( ordered_by(O,P,Q)
       => ! [R,S] : 
            ( ( ordered_by(O,R,S)
            <=> ( between(O,R,P,Q)
                & ( between(O,R,S,Q)
                  | between(O,R,Q,S)
                  | Q = S ) ) )
            | ( between(O,P,R,S)
              & ( between(O,P,R,Q)
                | between(O,P,Q,R)
                | Q = R ) )
            | ( P = R
              & ( between(O,P,S,Q)
                | between(O,P,Q,S)
                | Q = S ) ) ) ) )).

%--------------------------------------------------------------------------
