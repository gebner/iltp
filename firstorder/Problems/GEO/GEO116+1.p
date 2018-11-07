%--------------------------------------------------------------------------
% File     : GEO116+1 : ILTP v1.1.0
% Domain   : Geometry (Oriented curves)
% Problem  : Open curve betweenness property for three points
% Version  : [EHK99] axioms.
% English  : If P, Q and R are points on an open curve c then Q is not between 
%            P and R wrt. c, iff P is between R and Q wrt. c or R is between 
%            Q and P wrt. c or at least two of the points are identical.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Corollary 3.9 [KE99]

% Status   : Unknown
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   18 (   1 unit)
%            Number of atoms       :   83 (  14 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   71 (   6 ~  ;  13  |;  28  &)
%                                         (  11 <=>;  13 =>;   0 <=)
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
fof(corolary_3_9,conjecture,
    ( ! [C,P,Q,R] : 
        ( ( open(C)
          & incident_c(P,C)
          & incident_c(Q,C)
          & incident_c(R,C) )
       => ( ~ between_c(C,P,Q,R)
        <=> ( between_c(C,R,P,Q)
            | between_c(C,Q,R,P)
            | R = Q
            | R = P
            | P = Q ) ) ) )).

%--------------------------------------------------------------------------
