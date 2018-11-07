%--------------------------------------------------------------------------
% File     : GEO138+1 : ILTP v1.1.0
% Domain   : Geometry (Oriented curves)
% Problem  : Curve and ordered points determine oriented curve
% Version  : [EHK99] axioms.
% English  : A curve and a ordered pair of points uniquely determine an 
%            oriented curve.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Corollary 4.21 [KE99]

% Status   : Unknown
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   28 (   2 unit)
%            Number of atoms       :  116 (  18 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   96 (   8 ~  ;  10  |;  40  &)
%                                         (  20 <=>;  18 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   14 (   0 propositional; 1-4 arity)
%            Number of functors    :    2 (   0 constant; 1-2 arity)
%            Number of variables   :   98 (   0 singleton;  82 !;  16 ?)
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
fof(corollary_4_21,conjecture,
    ( ! [O1,O2] : 
        ( ( underlying_curve(O1) = underlying_curve(O2)
          & ? [P,Q] : 
              ( ordered_by(O1,P,Q)
              & ordered_by(O2,P,Q) ) )
       => O1 = O2 ) )).

%--------------------------------------------------------------------------
