%--------------------------------------------------------------------------
% File     : GEO106+1 : ILTP v1.1.1
% Domain   : Geometry (Oriented curves)
% Problem  : Two common endpoints means identical or sum to whole
% Version  : [EHK99] axioms.
% English  : If two sub-curves have two common endpoints then they are 
%            identical or their sum is the whole curve.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 2.24 [KE99]

% Status   : Unsolved
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   77 (  13 equality)
%            Maximal formula depth :   13 (   7 average)
%            Number of connectives :   65 (   5 ~  ;  10  |;  28  &)
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
fof(theorem_2_24,conjecture,
    ( ! [C,C1,C2] : 
        ( ( ? [P,Q] : 
              ( end_point(P,C1)
              & end_point(Q,C1)
              & end_point(P,C2)
              & end_point(Q,C2)
              & P != Q )
          & closed(C)
          & part_of(C1,C)
          & part_of(C2,C) )
       => ( C1 = C2
          | C = sum(C1,C2) ) ) )).

%--------------------------------------------------------------------------
