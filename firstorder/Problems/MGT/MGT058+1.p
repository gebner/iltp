%--------------------------------------------------------------------------
% File     : MGT058+1 : ILTP v1.1.2
% Domain   : Management (Organisation Theory)
% Problem  : An organization's position cannot be both fragile and robust
% Version  : [Han98] axioms.
% English  : 

% Refs     : [Kam00] Kamps (2000), Email to G. Sutcliffe
%            [CH00]  Carroll & Hannan (2000), The Demography of Corporation
%            [Han98] Hannan (1998), Rethinking Age Dependence in Organizati
% Source   : [Kam00]
% Names    : LEMMA 10 [Han98]

% Status   : Theorem
% Rating   : 0.18 v3.1.0, 0.22 v2.7.0, 0.33 v2.5.0, 0.17 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :    9 (   0 unit)
%            Number of atoms       :   32 (   4 equality)
%            Maximal formula depth :    7 (   6 average)
%            Number of connectives :   27 (   4 ~  ;   4  |;   8  &)
%                                         (   5 <=>;   6 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   0 propositional; 1-2 arity)
%            Number of functors    :    4 (   3 constant; 0-2 arity)
%            Number of variables   :   19 (   0 singleton;  18 !;   1 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : See MGT042+1.p for the mnemonic names.
%--------------------------------------------------------------------------
include('Axioms/MGT001+0.ax').
%--------------------------------------------------------------------------
%----Problem Axioms
%--- Case: Fragile and robust positions in drifting environments.
%--- Retracting A16!
%----
%----An organization's position is fragile if and only if it does not
%----provide advantage after age `sigma'.
%----
%----Added case:  ( smaller_or_equal(age(X,T),sigma) 
%----            => positional_advantage(X,T) )
fof(definition_3,axiom,
    ( ! [X] : 
        ( fragile_position(X)
      <=> ! [T] : 
            ( ( smaller_or_equal(age(X,T),sigma)
             => positional_advantage(X,T) )
            & ( greater(age(X,T),sigma)
             => ~ positional_advantage(X,T) ) ) ) )).

%----An organization's position is robust if and only if it provides
%----positional advantage only after age `tau'.
%----
%----Text says fragile_position(X) instead of robust_position(X).
%----Interchanged ~ positional_advantage(X,T) and positional_advantage(X,T).
fof(definition_4,axiom,
    ( ! [X] : 
        ( robust_position(X)
      <=> ! [T] : 
            ( ( smaller_or_equal(age(X,T),tau)
             => ~ positional_advantage(X,T) )
            & ( greater(age(X,T),tau)
             => positional_advantage(X,T) ) ) ) )).

%----Problem theorems
%----An organization's position cannot be both fragile and robust.
%----From D3-4 (also needs D<, D<=, D>=, MP>com).
%----
%----Requires several additions to the antecedent.
fof(lemma_10,conjecture,
    ( ! [X] : 
        ( ( organization(X)
          & ? [T0] : age(X,T0) = zero
          & greater_or_equal(sigma,zero)
          & greater_or_equal(tau,zero) )
       => ~ ( fragile_position(X)
            & robust_position(X) ) ) )).

%--------------------------------------------------------------------------
