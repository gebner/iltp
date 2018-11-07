%--------------------------------------------------------------------------
% File     : GEO110+1 : ILTP v1.1.1
% Domain   : Geometry (Oriented curves)
% Problem  : Betweenness for closed curves
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 3.7 [KE99]

% Status   : Unsolved
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   18 (   1 unit)
%            Number of atoms       :   81 (  14 equality)
%            Maximal formula depth :   12 (   8 average)
%            Number of connectives :   71 (   8 ~  ;   9  |;  31  &)
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
fof(theorem_3_7,conjecture,
    ( ! [C,P,Q,R] : 
        ( ( closed(C)
          & P != Q
          & Q != R
          & P != R
          & incident_c(P,C)
          & incident_c(Q,C)
          & incident_c(R,C) )
       => between_c(C,P,Q,R) ) )).

%--------------------------------------------------------------------------
