%--------------------------------------------------------------------------
% File     : MGT060+1 : ILTP v1.1.0
% Domain   : Management (Organisation Theory)
% Problem  : Hazard of mortality is lower during periods of immunity
% Version  : [Han98] axioms.
% English  : An organization's hazard of mortality is lower during periods in
%            which it has immunity than in periods in which it does not.

% Refs     : [Kam00] Kamps (2000), Email to G. Sutcliffe
%            [CH00]  Carroll & Hannan (2000), The Demography of Corporation
%            [Han98] Hannan (1998), Rethinking Age Dependence in Organizati
% Source   : [Kam00]
% Names    : ASSUMPTION 3 [Han98]

% Status   : Theorem
% Rating   : 0.18 v3.1.0, 0.33 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   13 (   5 unit)
%            Number of atoms       :   41 (   8 equality)
%            Maximal formula depth :   12 (   4 average)
%            Number of connectives :   35 (   7 ~  ;   4  |;  12  &)
%                                         (   3 <=>;   9 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   0 propositional; 1-2 arity)
%            Number of functors    :    6 (   5 constant; 0-2 arity)
%            Number of variables   :   18 (   0 singleton;  18 !;   0 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : See MGT042+1.p for the mnemonic names.
%--------------------------------------------------------------------------
include('Axioms/MGT001+0.ax').
%--------------------------------------------------------------------------
%----Problem Axioms
%----An organization's immunity. alignment of capability with the
%----current state of the environment and positional advantage jointly 
%----affect the hazard of mortality with the following ordinal scaling:
fof(assumption_17,axiom,
    ( ! [X,T] : 
        ( organization(X)
       => ( ( has_immunity(X,T)
           => hazard_of_mortality(X,T) = very_low )
          & ( ~ has_immunity(X,T)
           => ( ( ( is_aligned(X,T)
                  & positional_advantage(X,T) )
               => hazard_of_mortality(X,T) = low )
              & ( ( ~ is_aligned(X,T)
                  & positional_advantage(X,T) )
               => hazard_of_mortality(X,T) = mod1 )
              & ( ( is_aligned(X,T)
                  & ~ positional_advantage(X,T) )
               => hazard_of_mortality(X,T) = mod2 )
              & ( ( ~ is_aligned(X,T)
                  & ~ positional_advantage(X,T) )
               => hazard_of_mortality(X,T) = high ) ) ) ) ) )).

%----The levels of hazard of mortality are ordered:
%----
%----Split over 5 separate formulas because TPTP gives an error on top 
%----level occurrences of `&'.
fof(assumption_18a,axiom,
    ( greater(high,mod1) )).

fof(assumption_18b,axiom,
    ( greater(mod1,low) )).

fof(assumption_18c,axiom,
    ( greater(low,very_low) )).

fof(assumption_18d,axiom,
    ( greater(high,mod2) )).

fof(assumption_18e,axiom,
    ( greater(mod2,low) )).

%----Problem theorems
%----Text says on p.152 ``These assumptions [A17,A18] have the same effect 
%----  as assumptions 2 and 3 in the formalization used in section III.''
%----This is indeed the case for these assumptions are now derivable. 
%----A3 from A17, A18a,b,c,e (also needs D<, MP>str, MP>com, MP>tra).
%----
%----An organization's hazard of mortality is lower during periods in
%----which it has immunity than in periods in which it does not.
fof(assumption_3,conjecture,
    ( ! [X,T0,T] : 
        ( ( organization(X)
          & has_immunity(X,T0)
          & ~ has_immunity(X,T) )
       => greater(hazard_of_mortality(X,T),hazard_of_mortality(X,T0)) ) )).

%--------------------------------------------------------------------------
