%--------------------------------------------------------------------------
% File     : GEO111+1 : ILTP v1.1.2
% Domain   : Geometry (Oriented curves)
% Problem  : Basic property of orderings on linear structures 1
% Version  : [EHK99] axioms.
% English  : If Q is between P and R wrt. c, then P, Q and R are incident 
%            with c and are pairwise distinct

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 3.8 (1) [KE99]
%          : T4 [EHK99]

% Status   : Theorem
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   18 (   1 unit)
%            Number of atoms       :   80 (  14 equality)
%            Maximal formula depth :   12 (   8 average)
%            Number of connectives :   70 (   8 ~  ;   9  |;  30  &)
%                                         (  10 <=>;  13 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   0 propositional; 1-4 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   62 (   0 singleton;  52 !;  10 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%----Include axioms of betweenness for simple curves
include('Axioms/GEO004+1.ax').
%--------------------------------------------------------------------------
fof(theorem_3_8_1,conjecture,
    ( ! [C,P,Q,R] : 
        ( between_c(C,P,Q,R)
       => ( incident_c(P,C)
          & incident_c(Q,C)
          & incident_c(R,C)
          & P != Q
          & Q != R
          & P != R ) ) )).

%--------------------------------------------------------------------------
