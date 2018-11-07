%--------------------------------------------------------------------------
% File     : GEO095+1 : ILTP v1.1.0
% Domain   : Geometry (Oriented curves)
% Problem  : Endpoints of open sum are endpoints of curves
% Version  : [EHK99] axioms.
% English  : If two curves meet and their sum is open, then the endpoints of 
%            the two curves that are not the meeting-point are also the 
%            endpoints of the sum of these curves.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Proposition 2.14 (4) [KE99]

% Status   : Unknown
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   76 (  13 equality)
%            Maximal formula depth :   13 (   7 average)
%            Number of connectives :   66 (   7 ~  ;   9  |;  28  &)
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
fof(proposition_2_14_4,conjecture,
    ( ! [C1,C2,P] : 
        ( ( meet(P,C1,C2)
          & open(sum(C1,C2)) )
       => ? [Q,R] : 
            ( P != Q
            & Q != R
            & P != R
            & end_point(Q,sum(C1,C2))
            & end_point(Q,C1)
            & end_point(R,sum(C1,C2))
            & end_point(R,C2) ) ) )).

%--------------------------------------------------------------------------
