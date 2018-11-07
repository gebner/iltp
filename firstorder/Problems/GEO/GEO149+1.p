%--------------------------------------------------------------------------
% File     : GEO149+1 : ILTP v1.1.2
% Domain   : Geometry (Oriented curves)
% Problem  : Condition for meeting at two points
% Version  : [EHK99] axioms.
% English  : Objects can meet at two points only if they are ordered in the 
%            same way on both trajectories

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [EHK99]
% Names    : T15 [EHK99]

% Status   : Unsolved
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   37 (   3 unit)
%            Number of atoms       :  136 (  17 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :  108 (   9 ~  ;  10  |;  43  &)
%                                         (  24 <=>;  22 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   16 (   0 propositional; 1-4 arity)
%            Number of functors    :    5 (   0 constant; 1-2 arity)
%            Number of variables   :  122 (   0 singleton; 106 !;  16 ?)
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
fof(t15,conjecture,
    ( ! [P,Q,X,Y] : 
        ( ( connect(X,Y,P)
          & connect(X,Y,Q)
          & ordered_by(trajectory_of(X),P,Q) )
       => ordered_by(trajectory_of(Y),P,Q) ) )).

%--------------------------------------------------------------------------
