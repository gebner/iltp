%--------------------------------------------------------------------------
% File     : GEO127+1 : ILTP v1.1.2
% Domain   : Geometry (Oriented curves)
% Problem  : Incidence on oriented curves can be defined using precedence
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 4.12 [KE99]
%          : T9 [EHK99]

% Status   : Theorem
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   28 (   2 unit)
%            Number of atoms       :  115 (  16 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   95 (   8 ~  ;  11  |;  38  &)
%                                         (  21 <=>;  17 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   14 (   0 propositional; 1-4 arity)
%            Number of functors    :    2 (   0 constant; 1-2 arity)
%            Number of variables   :   97 (   0 singleton;  82 !;  15 ?)
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
fof(theorem_4_12,conjecture,
    ( ! [O,P] : 
        ( incident_o(P,O)
      <=> ? [Q] : 
            ( ordered_by(O,P,Q)
            | ordered_by(O,Q,P) ) ) )).

%--------------------------------------------------------------------------
