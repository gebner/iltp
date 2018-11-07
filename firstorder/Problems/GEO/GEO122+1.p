%--------------------------------------------------------------------------
% File     : GEO122+1 : ILTP v1.1.1
% Domain   : Geometry (Oriented curves)
% Problem  : Every curve has a finishing point
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Corollary 4.8 [KE99]

% Status   : Theorem
% Rating   : 1.00 v2.7.0, 0.83 v2.5.0, 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   28 (   3 unit)
%            Number of atoms       :  113 (  16 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   93 (   8 ~  ;  10  |;  38  &)
%                                         (  20 <=>;  17 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   14 (   0 propositional; 1-4 arity)
%            Number of functors    :    2 (   0 constant; 1-2 arity)
%            Number of variables   :   96 (   0 singleton;  81 !;  15 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%----Include axioms of betweenness for simple curves
include('Axioms/GEO004+1.ax').
%----Include oriented curve axioms
include('Axioms/GEO004+2.ax').
%--------------------------------------------------------------------------
fof(corollary_4_8,conjecture,
    ( ! [O] : 
      ? [P] : finish_point(P,O) )).

%--------------------------------------------------------------------------
