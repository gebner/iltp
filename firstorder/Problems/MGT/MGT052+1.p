%--------------------------------------------------------------------------
% File     : MGT052+1 : ILTP v1.1.1
% Domain   : Management (Organisation Theory)
% Problem  : The environment at any time is similar with itself
% Version  : [Han98] axioms.
% English  : 

% Refs     : [Kam00] Kamps (2000), Email to G. Sutcliffe
%            [CH00]  Carroll & Hannan (2000), The Demography of Corporation
%            [Han98] Hannan (1998), Rethinking Age Dependence in Organizati
% Source   : [Kam00]
% Names    : BACKGROUND ASSUMPTION 1 [Han98]

% Status   : Theorem
% Rating   : 0.22 v3.1.0, 0.17 v2.7.0, 0.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :    8 (   1 unit)
%            Number of atoms       :   21 (   3 equality)
%            Maximal formula depth :    8 (   5 average)
%            Number of connectives :   16 (   3 ~  ;   4  |;   3  &)
%                                         (   5 <=>;   1 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    8 (   0 propositional; 1-3 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   18 (   0 singleton;  18 !;   0 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : See MGT042+1.p for the mnemonic names.
%--------------------------------------------------------------------------
include('Axioms/MGT001+0.ax').
%--------------------------------------------------------------------------
%----Problem Axioms
%----Two states of the environment are dissimilar for an organization
%----if and only if the organization cannot be aligned to both.
%----
%----Added quantification over X.
fof(definition_2,axiom,
    ( ! [X,T0,T] : 
        ( dissimilar(X,T0,T)
      <=> ( organization(X)
          & ~ ( is_aligned(X,T0)
            <=> is_aligned(X,T) ) ) ) )).

%----Problem theorems
%----Background Assumption 1 
%----The environment at any time is similar with itself.
%----
%----Added quantification over X.
%----***(is immediate consequence of D2!)***
%----No inequalities needed.
fof(background_assumption_1,conjecture,
    ( ! [X,T] : ~ dissimilar(X,T,T) )).

%--------------------------------------------------------------------------
