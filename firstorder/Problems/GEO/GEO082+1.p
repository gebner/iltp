%--------------------------------------------------------------------------
% File     : GEO082+1 : ILTP v1.1.0
% Domain   : Geometry (Oriented curves)
% Problem  : Antisymmetry of part_of
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 2.5 [KE99] 

% Status   : Theorem
% Rating   : 0.18 v3.1.0, 0.22 v2.7.0, 0.17 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   70 (  11 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   57 (   4 ~  ;   9  |;  22  &)
%                                         (   9 <=>;  13 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    8 (   0 propositional; 1-3 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   55 (   0 singleton;  46 !;   9 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%--------------------------------------------------------------------------
fof(part_of_antisymmetry,conjecture,
    ( ! [C1,C2] : 
        ( ( part_of(C1,C2)
          & part_of(C2,C1) )
       => C1 = C2 ) )).

%--------------------------------------------------------------------------
