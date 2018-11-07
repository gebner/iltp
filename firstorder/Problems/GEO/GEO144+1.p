%--------------------------------------------------------------------------
% File     : GEO144+1 : ILTP v1.1.2
% Domain   : Geometry (Oriented curves)
% Problem  : Unique oppositely oriented curve 5
% Version  : [EHK99] axioms.
% English  : For every oriented line there is exactly one uniquely determined
%            oriented line with the same underlying curve that orders the
%            points in the opposite way.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 4.23 (5) [KE99]

% Status   : Unsolved
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   28 (   2 unit)
%            Number of atoms       :  124 (  20 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :  108 (  12 ~  ;  13  |;  44  &)
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
fof(theorem_4_23_5,conjecture,
    ( ! [O,P,Q,R,S] : 
        ( ( ordered_by(O,P,Q)
          & P != R
          & P != S
          & Q != S
          & Q != R )
       => ( ordered_by(O,R,S)
        <=> ( ( between(O,R,P,Q)
              & ( between(O,R,S,Q)
                | between(O,R,Q,S) ) )
            | ( between(O,P,R,S)
              & ( between(O,P,R,Q)
                | between(O,P,Q,R) ) ) ) ) ) )).

%--------------------------------------------------------------------------
