%--------------------------------------------------------------------------
% File     : GEO146+1 : ILTP v1.1.0
% Domain   : Geometry (Oriented curves)
% Problem  : Symmetry of connect
% Version  : [EHK99] axioms.
% English  : 

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [EHK99]
% Names    : T12 [EHK99]

% Status   : Theorem
% Rating   : 0.55 v3.1.0, 0.67 v2.7.0, 0.50 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   37 (   3 unit)
%            Number of atoms       :  134 (  17 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :  106 (   9 ~  ;  10  |;  41  &)
%                                         (  25 <=>;  21 =>;   0 <=)
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
fof(t12,conjecture,
    ( ! [X,Y,P] : 
        ( connect(X,Y,P)
      <=> connect(Y,X,P) ) )).

%--------------------------------------------------------------------------
