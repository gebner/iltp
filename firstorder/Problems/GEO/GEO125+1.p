%--------------------------------------------------------------------------
% File     : GEO125+1 : ILTP v1.1.2
% Domain   : Geometry (Oriented curves)
% Problem  : Every oriented curve has at most one finishing point
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Corollary 4.10 (2) [KE99]

% Status   : Theorem
% Rating   : 0.27 v3.1.0, 0.22 v2.7.0, 0.33 v2.5.0, 0.17 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   28 (   2 unit)
%            Number of atoms       :  115 (  17 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   95 (   8 ~  ;  10  |;  39  &)
%                                         (  20 <=>;  18 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   14 (   0 propositional; 1-4 arity)
%            Number of functors    :    2 (   0 constant; 1-2 arity)
%            Number of variables   :   97 (   0 singleton;  83 !;  14 ?)
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
fof(corollary_4_10_2,conjecture,
    ( ! [O,P,Q] : 
        ( ( finish_point(P,O)
          & finish_point(Q,O) )
       => P = Q ) )).

%--------------------------------------------------------------------------
