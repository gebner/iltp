%--------------------------------------------------------------------------
% File     : GEO107+1 : ILTP v1.1.0
% Domain   : Geometry (Oriented curves)
% Problem  : Equivalence of betweenness definitions 1 and 2
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 3.3 [KE99]

% Status   : Unknown
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   19 (   1 unit)
%            Number of atoms       :   84 (  14 equality)
%            Maximal formula depth :   15 (   8 average)
%            Number of connectives :   73 (   8 ~  ;   9  |;  32  &)
%                                         (  12 <=>;  12 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   10 (   0 propositional; 1-4 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   68 (   0 singleton;  56 !;  12 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%----Include axioms of betweenness for simple curves
include('Axioms/GEO004+1.ax').
%--------------------------------------------------------------------------
fof(between_c2_defn,hypothesis,
    ( ! [C,P,Q,R] : 
        ( between_c2(C,P,Q,R)
      <=> ( P != Q
          & P != R
          & Q != R
          & ? [C1,C2] : 
              ( meet(Q,C1,C2)
              & part_of(C1,C)
              & part_of(C2,C)
              & end_point(P,C1)
              & end_point(R,C2) ) ) ) )).

fof(theorem_3_3,conjecture,
    ( ! [C,P,Q,R] : 
        ( between_c(C,P,Q,R)
      <=> between_c2(C,P,Q,R) ) )).

%--------------------------------------------------------------------------
