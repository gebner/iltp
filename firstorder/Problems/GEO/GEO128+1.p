%--------------------------------------------------------------------------
% File     : GEO128+1 : ILTP v1.1.0
% Domain   : Geometry (Oriented curves)
% Problem  : Precedence of three points, of whoich two are ordered
% Version  : [EHK99] axioms.
% English  : If P precedes Q with respect to o, then any point R on o 
%            precedes Q or is preceded by P.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 4.13 [KE99]

% Status   : Unknown
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   28 (   2 unit)
%            Number of atoms       :  116 (  16 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   96 (   8 ~  ;  11  |;  38  &)
%                                         (  20 <=>;  19 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   14 (   0 propositional; 1-4 arity)
%            Number of functors    :    2 (   0 constant; 1-2 arity)
%            Number of variables   :   98 (   0 singleton;  84 !;  14 ?)
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
fof(theorem_4_13,conjecture,
    ( ! [O,P,Q] : 
        ( ordered_by(O,P,Q)
       => ! [R] : 
            ( incident_o(R,O)
           => ( ordered_by(O,R,Q)
              | ordered_by(O,P,R) ) ) ) )).

%--------------------------------------------------------------------------
