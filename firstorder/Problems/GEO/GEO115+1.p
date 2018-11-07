%--------------------------------------------------------------------------
% File     : GEO115+1 : ILTP v1.1.0
% Domain   : Geometry (Oriented curves)
% Problem  : Basic property of orderings on linear structures 5
% Version  : [EHK99] axioms.
% English  : If Q is between P and R wrt. c and Q' another point distinct 
%            from Q and lying on c then Q is either between P and Q' or 
%            between Q' and R wrt. c.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 3.8 (5) [KE99]
%          : T8 [EHK99]

% Status   : CounterSatisfiable
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Unknown
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   18 (   1 unit)
%            Number of atoms       :   78 (  12 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   66 (   6 ~  ;  10  |;  27  &)
%                                         (  10 <=>;  13 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   0 propositional; 1-4 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   63 (   0 singleton;  53 !;  10 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%----Include axioms of betweenness for simple curves
include('Axioms/GEO004+1.ax').
%--------------------------------------------------------------------------
fof(theorem_3_8_5,conjecture,
    ( ! [C,P,Q,R,Qpp] : 
        ( ( between_c(C,P,Q,R)
          & incident_c(Qpp,C)
          & Q != Qpp )
       => ( between_c(C,P,Q,Qpp)
          | between_c(C,Qpp,Q,R) ) ) )).

%--------------------------------------------------------------------------