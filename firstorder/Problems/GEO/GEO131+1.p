%--------------------------------------------------------------------------
% File     : GEO131+1 : ILTP v1.1.2
% Domain   : Geometry (Oriented curves)
% Problem  : Betweenness and precedence for three points, corollary
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Corollary 4.16 [KE99]

% Status   : Unsolved
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   28 (   2 unit)
%            Number of atoms       :  115 (  16 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   95 (   8 ~  ;  10  |;  38  &)
%                                         (  21 <=>;  18 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   15 (   0 propositional; 1-4 arity)
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
fof(corollary_4_16,conjecture,
    ( ! [P,Q,R,O] : 
        ( between(O,P,Q,R)
       => ( ordered_by(O,P,Q)
        <=> ordered_by(O,P,R) ) ) )).

%--------------------------------------------------------------------------
