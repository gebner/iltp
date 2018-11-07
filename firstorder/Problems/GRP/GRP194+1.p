%--------------------------------------------------------------------------
% File     : GRP194+1 : ILTP v1.1.2
% Domain   : Group Theory (Semigroups)
% Problem  : In semigroups, a surjective homomorphism maps the zero
% Version  : [Gol93] axioms.
% English  : If (F,*) and (H,+) are two semigroups, phi is a surjective 
%            homomorphism from F to H, and id is a left zero for F, 
%            then phi(id) is a left zero for H.

% Refs     : [Gol93] Goller (1993), Anwendung des Theorembeweisers SETHEO a
% Source   : [Gol93]
% Names    : 

% Status   : Theorem
% Rating   : 0.18 v3.1.0, 0.11 v2.7.0, 0.17 v2.6.0, 0.14 v2.5.0, 0.12 v2.4.0, 0.25 v2.3.0, 0.33 v2.2.1, 0.00 v2.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :    8 (   2 unit)
%            Number of atoms       :   21 (   4 equality)
%            Maximal formula depth :    8 (   4 average)
%            Number of connectives :   13 (   0 ~  ;   0  |;   6  &)
%                                         (   1 <=>;   6 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 2-2 arity)
%            Number of functors    :    5 (   3 constant; 0-3 arity)
%            Number of variables   :   15 (   0 singleton;  14 !;   1 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include Semigroup axioms 
include('Axioms/GRP007+0.ax').
%--------------------------------------------------------------------------
%----Definition of a homomorphism
fof(homomorphism1,axiom,
    ( ! [X] : 
        ( group_member(X,f)
       => group_member(phi(X),h) ) )).

fof(homomorphism2,axiom,
    ( ! [X,Y] : 
        ( ( group_member(X,f)
          & group_member(Y,f) )
       => multiply(h,phi(X),phi(Y)) = phi(multiply(f,X,Y)) ) )).

fof(surjective,axiom,
    ( ! [X] : 
        ( group_member(X,h)
       => ? [Y] : 
            ( group_member(Y,f)
            & phi(Y) = X ) ) )).

%----Definition of left zero
fof(left_zero,axiom,
    ( ! [G,X] : 
        ( left_zero(G,X)
      <=> ( group_member(X,G)
          & ! [Y] : 
              ( group_member(Y,G)
             => multiply(G,X,Y) = X ) ) ) )).

%----The conjecture
fof(left_zero_for_f,hypothesis,
    ( left_zero(f,f_left_zero) )).

fof(prove_left_zero_h,conjecture,
    ( left_zero(h,phi(f_left_zero)) )).

%--------------------------------------------------------------------------
