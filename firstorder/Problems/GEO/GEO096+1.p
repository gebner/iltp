%--------------------------------------------------------------------------
% File     : GEO096+1 : ILTP v1.1.0
% Domain   : Geometry (Oriented curves)
% Problem  : Endpoints of curves are endpoints of sum
% Version  : [EHK99] axioms.
% English  : If two curves meet, than the endpoints of the sum are exactly 
%            those endpoints of the two curves that are not meeting-points 
%            of them.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Proposition 2.14 (5) [KE99]

% Status   : Unknown
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   72 (  10 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   60 (   5 ~  ;  10  |;  22  &)
%                                         (  10 <=>;  13 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    8 (   0 propositional; 1-3 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   57 (   0 singleton;  47 !;  10 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%--------------------------------------------------------------------------
fof(proposition_2_14_5,conjecture,
    ( ! [C1,C2] : 
        ( ? [P] : meet(P,C1,C2)
       => ! [Q] : 
            ( end_point(Q,sum(C1,C2))
          <=> ( ~ meet(Q,C1,C2)
              & ( end_point(Q,C1)
                | end_point(Q,C2) ) ) ) ) )).

%--------------------------------------------------------------------------