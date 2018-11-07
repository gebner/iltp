%--------------------------------------------------------------------------
% File     : MGT005+2 : ILTP v1.1.0
% Domain   : Management (Organisation Theory)
% Problem  : Complexity increases the risk of death due to reorganization.
% Version  : Especial.
%            Theorem formulation : Updated.
% English  : 

% Refs     : [PB+92] Peli et al. (1992), A Logical Approach to Formalizing
%          : [PB+94] Peli et al. (1994), A Logical Approach to Formalizing 
%          : [Kam94] Kamps (1994), Email to G. Sutcliffe
% Source   : [Kam94]
% Names    : THEOREM 5+ [Kam94]

% Status   : Theorem
% Rating   : 0.22 v3.1.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.50 v2.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   13 (   0 unit)
%            Number of atoms       :  104 (   7 equality)
%            Maximal formula depth :   34 (  14 average)
%            Number of connectives :   95 (   4 ~  ;   4  |;  74  &)
%                                         (   0 <=>;  13 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   0 propositional; 2-3 arity)
%            Number of functors    :    2 (   2 constant; 0-0 arity)
%            Number of variables   :   79 (   0 singleton;  75 !;   4 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Subsitution axioms
%----Problem axioms
fof(mp6_1,axiom,
    ( ! [X,Y] : ~ ( greater(X,Y)
        & X = Y ) )).

fof(mp6_2,axiom,
    ( ! [X,Y] : ~ ( greater(X,Y)
        & greater(Y,X) ) )).

fof(mp11,axiom,
    ( ! [X,Y,Z] : 
        ( ( greater(X,Y)
          & greater(Y,Z) )
       => greater(X,Z) ) )).

fof(mp14,axiom,
    ( ! [X,Y,P1,P2,T] : 
        ( ( survival_chance(X,P1,T)
          & survival_chance(Y,P2,T) )
       => ( greater(p1,p2)
          | p1 = p2
          | greater(p2,p1) ) ) )).

fof(mp12,axiom,
    ( ! [X,T] : 
        ( organization(X,T)
       => ? [P] : survival_chance(X,P,T) ) )).

fof(mp13,axiom,
    ( ! [X,T,T1,T2] : 
        ( ( organization(X,T1)
          & organization(X,T2)
          & greater(T,T1)
          & greater(T2,T) )
       => organization(X,T) ) )).

fof(mp7,axiom,
    ( ! [X,Ta,Tb] : 
        ( reorganization(X,Ta,Tb)
       => greater(Tb,Ta) ) )).

fof(t3_FOL,hypothesis,
    ( ! [X,P1,P2,T1,T2] : 
        ( ( organization(X,T1)
          & organization(X,T2)
          & reorganization_free(X,T1,T2)
          & survival_chance(X,P1,T1)
          & survival_chance(X,P2,T2)
          & greater(T2,T1) )
       => greater(P2,P1) ) )).

%----t4_FOL - alias a9_FOL
fof(t4_FOL,hypothesis,
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

%----Complexity increases the expected duration of reorganization.
fof(a10_FOL,hypothesis,
    ( ! [X,Y,Re,C,C1,C2,Ta,Tb,Tc] : 
        ( ( organization(X,Ta)
          & organization(Y,Ta)
          & organization(Y,Tc)
          & class(X,C,Ta)
          & class(Y,C,Ta)
          & reorganization(X,Ta,Tb)
          & reorganization(Y,Ta,Tc)
          & reorganization_type(X,Re,Ta)
          & reorganization_type(Y,Re,Ta)
          & complexity(X,C1,Ta)
          & complexity(Y,C2,Ta)
          & greater(C2,C1) )
       => greater(Tc,Tb) ) )).

%----Complexity is no survival advantage during reorganization.
fof(a11_FOL,hypothesis,
    ( ! [X,Y,Re,C,P,P1,P2,C1,C2,Ta,Tb,Tc] : 
        ( ( organization(X,Ta)
          & organization(Y,Ta)
          & organization(X,Tb)
          & organization(Y,Tb)
          & class(X,C,Ta)
          & class(Y,C,Ta)
          & survival_chance(X,P,Ta)
          & survival_chance(Y,P,Ta)
          & reorganization(X,Ta,Tb)
          & reorganization(Y,Ta,Tc)
          & reorganization_type(X,Re,Ta)
          & reorganization_type(Y,Re,Ta)
          & survival_chance(X,P1,Tb)
          & survival_chance(Y,P2,Tb)
          & complexity(X,C1,Ta)
          & complexity(Y,C2,Ta)
          & greater(C2,C1) )
       => ( greater(P1,P2)
          | P1 = P2 ) ) )).

%----MATHS. Consequence of the Weierstrass theorem:
%----If f1 and f2 are continuous functions, and f1 > f2 at t2,  
%----f2 > f1 at t1, where t1<t2, then f2 = f1 somewhere between t1 and t2.
%----INSTANTIATION: survival_chance(x,t) = f1 ; 
%----survival_chance(y,t) = f2
fof(a15_FOL,hypothesis,
    ( ! [X,Y,Px1,Px2,Py1,Py2,T1,T2] : 
        ( ( greater(T2,T1)
          & survival_chance(X,Px1,T1)
          & survival_chance(Y,Py1,T1)
          & survival_chance(X,Px2,T2)
          & survival_chance(Y,Py2,T2)
          & greater(Px2,Px1)
          & greater(Py1,Px2) )
       => ? [T0,Px0,Py0] : 
            ( greater(T0,T1)
            & greater(T2,T0)
            & survival_chance(X,Px0,T0)
            & survival_chance(Y,Py0,T0)
            & Px0 = Py0 ) ) )).

fof(t5_plus_FOL,conjecture,
    ( ! [X,Y,Re,C,P,P1,P2,C1,C2,T,Ta,Tb,Tc] : 
        ( ( organization(X,Ta)
          & organization(Y,Ta)
          & organization(X,Tc)
          & organization(Y,Tc)
          & class(X,C,Ta)
          & class(Y,C,Ta)
          & survival_chance(X,P,Ta)
          & survival_chance(Y,P,Ta)
          & reorganization(X,Ta,Tb)
          & reorganization(Y,Ta,Tc)
          & reorganization_type(X,Re,Ta)
          & reorganization_type(Y,Re,Ta)
          & reorganization_free(X,Tb,Tc)
          & survival_chance(X,P1,T)
          & survival_chance(Y,P2,T)
          & complexity(X,C1,Ta)
          & complexity(Y,C2,Ta)
          & greater(C2,C1)
          & ( T = Tc
           => greater(P1,P2) ) )
       => ( T = Tb
         => ( greater(P1,P2)
            | P1 = P2 ) ) ) )).

%--------------------------------------------------------------------------
