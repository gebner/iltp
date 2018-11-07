%--------------------------------------------------------------------------
% File     : MGT003+1 : ILTP v1.1.0
% Domain   : Management (Organisation Theory)
% Problem  : Organizational death rates decrease with age.
% Version  : [PB+94] axioms.
% English  : 

% Refs     : [PB+92] Peli et al. (1992), A Logical Approach to Formalizing
%          : [PB+94] Peli et al. (1994), A Logical Approach to Formalizing 
%          : [Kam94] Kamps (1994), Email to G. Sutcliffe
% Source   : [Kam94]
% Names    : THEOREM 3 [PB+92]
%          : T3FOL2 [PB+94]

% Status   : Theorem
% Rating   : 0.11 v3.1.0, 0.00 v2.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :    5 (   0 unit)
%            Number of atoms       :   29 (   0 equality)
%            Maximal formula depth :   18 (  11 average)
%            Number of connectives :   24 (   0 ~  ;   0  |;  19  &)
%                                         (   0 <=>;   5 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   0 propositional; 2-3 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   24 (   0 singleton;  23 !;   1 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(mp4,axiom,
    ( ! [X,T1,T2] : 
        ( reorganization_free(X,T1,T2)
       => ( reorganization_free(X,T1,T1)
          & reorganization_free(X,T2,T2) ) ) )).

fof(mp5,axiom,
    ( ! [X,T] : 
        ( organization(X,T)
       => ? [I] : inertia(X,I,T) ) )).

fof(t1_FOL,hypothesis,
    ( ! [X,Y,T1,T2,I1,I2,P1,P2] : 
        ( ( organization(X,T1)
          & organization(Y,T2)
          & reorganization_free(X,T1,T1)
          & reorganization_free(Y,T2,T2)
          & inertia(X,I1,T1)
          & inertia(Y,I2,T2)
          & survival_chance(X,P1,T1)
          & survival_chance(Y,P2,T2)
          & greater(I2,I1) )
       => greater(P2,P1) ) )).

fof(t2_FOL,hypothesis,
    ( ! [X,I1,I2,T1,T2] : 
        ( ( organization(X,T1)
          & organization(X,T2)
          & reorganization_free(X,T1,T2)
          & inertia(X,I1,T1)
          & inertia(X,I2,T2)
          & greater(T2,T1) )
       => greater(I2,I1) ) )).

fof(t3_FOL,conjecture,
    ( ! [X,P1,P2,T1,T2] : 
        ( ( organization(X,T1)
          & organization(X,T2)
          & reorganization_free(X,T1,T2)
          & survival_chance(X,P1,T1)
          & survival_chance(X,P2,T2)
          & greater(T2,T1) )
       => greater(P2,P1) ) )).

%--------------------------------------------------------------------------