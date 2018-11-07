%--------------------------------------------------------------------------
% File     : GEO135+1 : ILTP v1.1.1
% Domain   : Geometry (Oriented curves)
% Problem  : Ordering can be determined by betweenness and incidence
% Version  : [EHK99] axioms.
% English  : The ordering of any pair of points R and S on an oriented line 
%            o can be determined on the basis of a given pair of points P and 
%            Q using betweenness and incidence only.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Corollary 4.18 [KE99]
%          : T10 [EHK99]

% Status   : Unsolved
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   28 (   2 unit)
%            Number of atoms       :  121 (  18 equality)
%            Maximal formula depth :   13 (   7 average)
%            Number of connectives :  104 (  11 ~  ;  12  |;  42  &)
%                                         (  21 <=>;  18 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   15 (   0 propositional; 1-4 arity)
%            Number of functors    :    2 (   0 constant; 1-2 arity)
%            Number of variables   :   99 (   0 singleton;  85 !;  14 ?)
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
fof(corollary_4_18,conjecture,
    ( ! [O,P,Q] : 
        ( ordered_by(O,P,Q)
       => ! [R,S] : 
            ( ordered_by(O,R,S)
          <=> ( ( incident_o(S,O)
                & ( between(O,R,P,Q)
                  | P = R )
                & R != S
                & ~ between(O,S,R,Q) )
              | ( between(O,P,R,S)
                & ~ between(O,Q,P,R) ) ) ) ) )).

%--------------------------------------------------------------------------
