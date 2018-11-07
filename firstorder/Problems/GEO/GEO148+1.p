%--------------------------------------------------------------------------
% File     : GEO148+1 : ILTP v1.1.0
% Domain   : Geometry (Oriented curves)
% Problem  : No meeting if someone has already passed
% Version  : [EHK99] axioms.
% English  : A point can only be a meeting point of two moving objects if 
%            it is not the case that one object already passed through it 
%            when the other object was still moving towards it

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [EHK99]
% Names    : T14 [EHK99]

% Status   : Theorem
% Rating   : 0.27 v3.1.0, 0.33 v2.4.0
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1
%
% Syntax   : Number of formulae    :   37 (   3 unit)
%            Number of atoms       :  136 (  17 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :  109 (  10 ~  ;  10  |;  42  &)
%                                         (  24 <=>;  23 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   16 (   0 propositional; 1-4 arity)
%            Number of functors    :    5 (   0 constant; 1-2 arity)
%            Number of variables   :  123 (   0 singleton; 107 !;  16 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%----Include axioms of betweenness for simple curves
include('Axioms/GEO004+1.ax').
%----Include oriented curve axioms
include('Axioms/GEO004+2.ax').
%----Include trajectory axioms
include('Axioms/GEO004+3.ax').
%--------------------------------------------------------------------------
fof(t14,conjecture,
    ( ! [P,X,Y] : 
        ( connect(X,Y,P)
       => ! [Q1,Q2] : 
            ( ( ordered_by(trajectory_of(Y),Q2,P)
              & ordered_by(trajectory_of(X),P,Q1) )
           => ~ once(at_the_same_time(at(X,Q1),at(Y,Q2))) ) ) )).

%--------------------------------------------------------------------------
