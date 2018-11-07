%--------------------------------------------------------------------------
% File     : MGT042+1 : ILTP v1.1.0
% Domain   : Management (Organisation Theory)
% Problem  : Conditions for a lower hazard of mortality
% Version  : [Han98] axioms.
% English  : When an organization lacks immunity, increased collective
%            knowledge and superior external ties lower its hazard of
%            mortality when internal friction does not increase.

% Refs     : [Kam00] Kamps (2000), Email to G. Sutcliffe
%            [CH00]  Carroll & Hannan (2000), The Demography of Corporation
%            [Han98] Hannan (1998), Rethinking Age Dependence in Organizati
% Source   : [Kam00]
% Names    : LEMMA 1 [Han98]

% Status   : Theorem
% Rating   : 0.64 v3.1.0, 0.78 v2.7.0, 0.67 v2.6.0, 0.83 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   10 (   0 unit)
%            Number of atoms       :   54 (  11 equality)
%            Maximal formula depth :    9 (   6 average)
%            Number of connectives :   49 (   5 ~  ;   4  |;  22  &)
%                                         (   3 <=>;  15 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    7 (   0 propositional; 1-2 arity)
%            Number of functors    :    6 (   0 constant; 2-2 arity)
%            Number of variables   :   25 (   0 singleton;  25 !;   0 ?)
%            Maximal term depth    :    2 (   2 average)

% Comments : The original text uses mnemonic names:
%            Original:    C/F/P:  Arity:    New name:
%            zero-symbol  c       0         zero
%            eta-symbol   c       0         eta
%            sigma-symbol c       0         sigma
%            tau-symbol   c       0         tau
%            very_low     c       0         very_low
%            low          c       0         low
%            mod1         c       0         mod1
%            mod2         c       0         mod2
%            high         c       0         high
%            A            f       2         age  
%            H            f       2         hazard_of_mortality  
%            C            f       2         capability  
%            P            f       2         position  
%            K            f       2         stock_of_knowledge  
%            T            f       2         external_ties  
%            F            f       2         internal_friction  
%            O            p       1         organization  
%            EN           p       1         has_endowment  
%            IM           p       2         has_immunity  
%            DS           p       3         dissimilar  
%            AL           p       2         is_aligned  
%            PA           p       2         positional_advantage  
%            FG           p       1         fragile_position  
%            RB           p       1         robust_position  
%--------------------------------------------------------------------------
include('Axioms/MGT001+0.ax').
%--------------------------------------------------------------------------
%----Problem Axioms
%----When an organization lacks immunity, superior capability and
%----position imply a lower hazard of mortality.
fof(assumption_4,axiom,
    ( ! [X,T0,T] : 
        ( ( organization(X)
          & ~ has_immunity(X,T0)
          & ~ has_immunity(X,T) )
       => ( ( ( greater(capability(X,T),capability(X,T0))
              & greater_or_equal(position(X,T),position(X,T0)) )
           => smaller(hazard_of_mortality(X,T),hazard_of_mortality(X,T0)) )
          & ( ( greater_or_equal(capability(X,T),capability(X,T0))
              & greater(position(X,T),position(X,T0)) )
           => smaller(hazard_of_mortality(X,T),hazard_of_mortality(X,T0)) )
          & ( ( capability(X,T) = capability(X,T0)
              & position(X,T) = position(X,T0) )
           => hazard_of_mortality(X,T) = hazard_of_mortality(X,T0) ) ) ) )).

%----Increased knowledge elevates an organization's capability; and
%----increased accumulation of organizational internal frictions
%----diminishes its capability.
fof(assumption_5,axiom,
    ( ! [X,T0,T] : 
        ( organization(X)
       => ( ( ( greater(stock_of_knowledge(X,T),stock_of_knowledge(X,T0))
              & smaller_or_equal(internal_friction(X,T),internal_friction(X,T0)) )
           => greater(capability(X,T),capability(X,T0)) )
          & ( ( smaller_or_equal(stock_of_knowledge(X,T),stock_of_knowledge(X,T0))
              & greater(internal_friction(X,T),internal_friction(X,T0)) )
           => smaller(capability(X,T),capability(X,T0)) )
          & ( ( stock_of_knowledge(X,T) = stock_of_knowledge(X,T0)
              & internal_friction(X,T) = internal_friction(X,T0) )
           => capability(X,T) = capability(X,T0) ) ) ) )).

%----Improved ties with external actors enhance an organization's position.
fof(assumption_6,axiom,
    ( ! [X,T0,T] : 
        ( organization(X)
       => ( ( greater(external_ties(X,T),external_ties(X,T0))
           => greater(position(X,T),position(X,T0)) )
          & ( external_ties(X,T) = external_ties(X,T0)
           => position(X,T) = position(X,T0) ) ) ) )).

%----Problem theorems
%----When an organization lacks immunity, increased collective
%----knowledge and superior external ties lower its hazard of
%----mortality when internal friction does not increase.
%----From A4, A5, and A6 (text says A1-6; also needs D<, D>=, D<=).
fof(lemma_1,conjecture,
    ( ! [X,T0,T] : 
        ( ( organization(X)
          & ~ has_immunity(X,T0)
          & ~ has_immunity(X,T) )
       => ( ( ( greater(stock_of_knowledge(X,T),stock_of_knowledge(X,T0))
              & smaller_or_equal(internal_friction(X,T),internal_friction(X,T0))
              & greater_or_equal(external_ties(X,T),external_ties(X,T0)) )
           => smaller(hazard_of_mortality(X,T),hazard_of_mortality(X,T0)) )
          & ( ( greater_or_equal(stock_of_knowledge(X,T),stock_of_knowledge(X,T0))
              & smaller_or_equal(internal_friction(X,T),internal_friction(X,T0))
              & greater(external_ties(X,T),external_ties(X,T0)) )
           => smaller(hazard_of_mortality(X,T),hazard_of_mortality(X,T0)) ) ) ) )).

%--------------------------------------------------------------------------
