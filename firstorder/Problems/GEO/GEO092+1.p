%--------------------------------------------------------------------------
% File     : GEO092+1 : ILTP v1.1.1
% Domain   : Geometry (Oriented curves)
% Problem  : Common point of open sum is the meeting point
% Version  : [EHK99] axioms.
% English  : If two curves meet and their sum is open, then the only point 
%            they have in common is their meeting-point.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Proposition 2.14 (1) [KE99]

% Status   : Theorem
% Rating   : 1.00 v2.7.0, 0.83 v2.5.0, 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   72 (  11 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   61 (   6 ~  ;   9  |;  23  &)
%                                         (   9 <=>;  14 =>;   0 <=)
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
fof(proposition_2_14_1,conjecture,
    ( ! [C1,C2,P] : 
        ( ( meet(P,C1,C2)
          & open(sum(C1,C2)) )
       => ! [Q] : 
            ( Q != P
           => ~ ( incident_c(Q,C1)
                & incident_c(Q,C2) ) ) ) )).

%--------------------------------------------------------------------------
