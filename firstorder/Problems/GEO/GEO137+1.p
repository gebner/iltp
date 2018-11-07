%--------------------------------------------------------------------------
% File     : GEO137+1 : ILTP v1.1.0
% Domain   : Geometry (Oriented curves)
% Problem  : Identical oriented lines
% Version  : [EHK99] axioms.
% English  : Oriented lines consisting of the same points and ordering one 
%            pair of points in the same way, are identical.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 4.20 [KE99]
%          : T11 [EHK99]

% Status   : Unknown
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   28 (   2 unit)
%            Number of atoms       :  117 (  17 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   97 (   8 ~  ;  10  |;  40  &)
%                                         (  21 <=>;  18 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   14 (   0 propositional; 1-4 arity)
%            Number of functors    :    2 (   0 constant; 1-2 arity)
%            Number of variables   :   99 (   0 singleton;  83 !;  16 ?)
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
fof(theorem_4_20,conjecture,
    ( ! [O1,O2] : 
        ( ( ! [P] : 
              ( incident_o(P,O1)
            <=> incident_o(P,O2) )
          & ? [P,Q] : 
              ( ordered_by(O1,P,Q)
              & ordered_by(O2,P,Q) ) )
       => O1 = O2 ) )).

%--------------------------------------------------------------------------
