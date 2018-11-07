%--------------------------------------------------------------------------
% File     : GEO101+1 : ILTP v1.1.0
% Domain   : Geometry (Oriented curves)
% Problem  : Intensification of GEO100+1
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Corollary 2.19 [KE99]

% Status   : Unknown
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   79 (  15 equality)
%            Maximal formula depth :   14 (   7 average)
%            Number of connectives :   70 (   8 ~  ;   9  |;  31  &)
%                                         (   9 <=>;  13 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    8 (   0 propositional; 1-3 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   59 (   0 singleton;  47 !;  12 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%--------------------------------------------------------------------------
fof(corollary_2_19,conjecture,
    ( ! [C,C1,P] : 
        ( ( part_of(C1,C)
          & C1 != C
          & open(C)
          & end_point(P,C1)
          & end_point(P,C) )
       => ? [Q,R,C2] : 
            ( meet(Q,C1,C2)
            & C = sum(C1,C2)
            & P != Q
            & Q != R
            & P != R
            & end_point(R,C2)
            & end_point(R,C) ) ) )).

%--------------------------------------------------------------------------
