%--------------------------------------------------------------------------
% File     : GEO147+1 : ILTP v1.1.0
% Domain   : Geometry (Oriented curves)
% Problem  : Meeting is possible only if there is a common position
% Version  : [EHK99] axioms.
% English  : 

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [EHK99]
% Names    : T13 [EHK99]

% Status   : Theorem
% Rating   : 0.27 v3.1.0, 0.22 v2.7.0, 0.17 v2.5.0, 0.00 v2.4.0
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1
%
% Syntax   : Number of formulae    :   37 (   3 unit)
%            Number of atoms       :  135 (  17 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :  107 (   9 ~  ;  10  |;  42  &)
%                                         (  24 <=>;  22 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   16 (   0 propositional; 1-4 arity)
%            Number of functors    :    5 (   0 constant; 1-2 arity)
%            Number of variables   :  121 (   0 singleton; 105 !;  16 ?)
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
fof(t13,conjecture,
    ( ! [P,X,Y] : 
        ( connect(X,Y,P)
       => ( incident_o(P,trajectory_of(X))
          & incident_o(P,trajectory_of(Y)) ) ) )).

%--------------------------------------------------------------------------
