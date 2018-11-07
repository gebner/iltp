%--------------------------------------------------------------------------
% File     : MGT004+1 : ILTP v1.1.0
% Domain   : Management (Organisation Theory)
% Problem  : Attempts at reorganization increase death rates.
% Version  : [PB+94] axioms.
% English  : 

% Refs     : [PB+92] Peli et al. (1992), A Logical Approach to Formalizing
%          : [PB+94] Peli et al. (1994), A Logical Approach to Formalizing 
%          : [Kam94] Kamps (1994), Email to G. Sutcliffe
% Source   : [Kam94]
% Names    : THEOREM 4 [PB+92]
%          : T4FOL1 [PB+94]

% Status   : Theorem
% Rating   : 0.11 v3.1.0, 0.00 v2.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :    5 (   0 unit)
%            Number of atoms       :   36 (   0 equality)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :   35 (   4 ~  ;   0  |;  26  &)
%                                         (   0 <=>;   5 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 2-3 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   32 (   0 singleton;  30 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(mp1,axiom,
    ( ! [X,T] : 
        ( organization(X,T)
       => ? [R] : reliability(X,R,T) ) )).

fof(mp2,axiom,
    ( ! [X,T] : 
        ( organization(X,T)
       => ? [A] : accountability(X,A,T) ) )).

%----Selection in populations of organizations in modern societies
%----favours forms with high reliability of performance and high levels 
%----of accountability.
fof(a1_FOL,hypothesis,
    ( ! [X,Y,R1,R2,A1,A2,P1,P2,T1,T2] : 
        ( ( organization(X,T1)
          & organization(Y,T2)
          & reliability(X,R1,T1)
          & reliability(Y,R2,T2)
          & accountability(X,A1,T1)
          & accountability(Y,A2,T2)
          & survival_chance(X,P1,T1)
          & survival_chance(Y,P2,T2)
          & greater(R2,R1)
          & greater(A2,A1) )
       => greater(P2,P1) ) )).

%----The process of attempting reorganization lowers reliability of
%----performance.
fof(a6_FOL,hypothesis,
    ( ! [X,R1,R2,A1,A2,T1,T2,Ta,Tb] : 
        ( ( organization(X,T1)
          & organization(X,T2)
          & reorganization(X,Ta,Tb)
          & reliability(X,R1,T1)
          & reliability(X,R2,T2)
          & accountability(X,A1,T1)
          & accountability(X,A2,T2)
          & ~ greater(Ta,T1)
          & greater(T2,T1)
          & ~ greater(T2,Tb) )
       => ( greater(R1,R2)
          & greater(A1,A2) ) ) )).

%----t4_FOL - alias a9_FOL
fof(t4_FOL,conjecture,
    ( ! [X,P1,P2,T1,T2,Ta,Tb] : 
        ( ( organization(X,T1)
          & organization(X,T2)
          & reorganization(X,Ta,Tb)
          & survival_chance(X,P1,T1)
          & survival_chance(X,P2,T2)
          & ~ greater(Ta,T1)
          & greater(T2,T1)
          & ~ greater(T2,Tb) )
       => greater(P1,P2) ) )).

%--------------------------------------------------------------------------