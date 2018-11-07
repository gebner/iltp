%--------------------------------------------------------------------------
% File     : GEO159+1 : ILTP v1.1.1
% Domain   : Geometry (Oriented curves)
% Problem  : Betweenness for simple curves
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [EHK99]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v3.1.0, 0.83 v2.7.0, 0.67 v2.6.0, 1.00 v2.5.0
%
% Status (intuit.) : Unsolved (Problem negated)
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   73 (  11 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   61 (   5 ~  ;   9  |;  25  &)
%                                         (  10 <=>;  12 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   0 propositional; 1-4 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   58 (   0 singleton;  48 !;  10 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include Simple curve axioms
include('Axioms/GEO004+0.ax').
%----Include Betweenness for simple curves
include('Axioms/GEO004+1.ax').
%--------------------------------------------------------------------------
