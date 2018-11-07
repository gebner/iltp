%--------------------------------------------------------------------------
% File     : GEO161+1 : ILTP v1.1.0
% Domain   : Geometry (Oriented curves)
% Problem  : Trajectories
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [EHK99]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v3.1.0, 0.83 v2.7.0, 0.67 v2.6.0, 1.00 v2.5.0
%
% Status (intuit.) : Unknown
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   36 (   3 unit)
%            Number of atoms       :  132 (  17 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :  105 (   9 ~  ;  10  |;  41  &)
%                                         (  24 <=>;  21 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   16 (   0 propositional; 1-4 arity)
%            Number of functors    :    5 (   0 constant; 1-2 arity)
%            Number of variables   :  118 (   0 singleton; 102 !;  16 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include Simple curve axioms
include('Axioms/GEO004+0.ax').
%----Include Betweenness for simple curves
include('Axioms/GEO004+1.ax').
%----Include Oriented curves
include('Axioms/GEO004+2.ax').
%----Include Trajectories
include('Axioms/GEO004+3.ax').
%--------------------------------------------------------------------------
