%--------------------------------------------------------------------------
% File     : MGT012+1 : ILTP v1.1.2
% Domain   : Management (Organisation Theory)
% Problem  : Complexity of an organization cannot get smaller by age
% Version  : [PB+94] axioms.
% English  : Complexity of an organization cannot get smaller by age in
%            lack of reorganization.

% Refs     : [PB+94] Peli et al. (1994), A Logical Approach to Formalizing 
%          : [Kam94] Kamps (1994), Email to G. Sutcliffe
%          : [Kam95] Kamps (1995), Email to G. Sutcliffe
% Source   : [Kam94]
% Names    :

% Status   : Theorem
% Rating   : 0.22 v3.1.0, 0.17 v2.7.0, 0.00 v2.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :    8 (   0 unit)
%            Number of atoms       :   38 (   2 equality)
%            Maximal formula depth :   19 (   9 average)
%            Number of connectives :   33 (   3 ~  ;   0  |;  24  &)
%                                         (   0 <=>;   6 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    7 (   0 propositional; 2-3 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   34 (   0 singleton;  32 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : "Not published due to publication constraints." [Kam95].
%--------------------------------------------------------------------------
%----Subsitution axioms
%----Problem axioms
fof(mp5,axiom,
    ( ! [X,T] : 
        ( organization(X,T)
       => ? [I] : inertia(X,I,T) ) )).

fof(mp6_1,axiom,
    ( ! [X,Y] : ~ ( greater(X,Y)
        & X = Y ) )).

fof(mp6_2,axiom,
    ( ! [X,Y] : ~ ( greater(X,Y)
        & greater(Y,X) ) )).

fof(mp9,axiom,
    ( ! [X,T] : 
        ( organization(X,T)
       => ? [C] : class(X,C,T) ) )).

%----Class cannot change without reorganization.
fof(mp10,axiom,
    ( ! [X,T1,T2,C1,C2] : 
        ( ( organization(X,T1)
          & organization(X,T2)
          & reorganization_free(X,T1,T2)
          & class(X,C1,T1)
          & class(X,C2,T2) )
       => C1 = C2 ) )).

fof(a12_FOL,hypothesis,
    ( ! [X,Y,C,C1,C2,I1,I2,T1,T2] : 
        ( ( organization(X,T1)
          & organization(Y,T2)
          & class(X,C,T1)
          & class(Y,C,T2)
          & complexity(X,C1,T1)
          & complexity(Y,C2,T2)
          & inertia(X,I1,T1)
          & inertia(Y,I2,T2)
          & greater(C2,C1) )
       => greater(I2,I1) ) )).

fof(t2_FOL,hypothesis,
    ( ! [X,I1,I2,T1,T2] : 
        ( ( organization(X,T1)
          & organization(X,T2)
          & reorganization_free(X,T1,T2)
          & inertia(X,I1,T1)
          & inertia(X,I2,T2)
          & greater(T2,T1) )
       => greater(I2,I1) ) )).

fof(t12_FOL,conjecture,
    ( ! [X,C1,C2,T1,T2] : 
        ( ( organization(X,T1)
          & organization(X,T2)
          & reorganization_free(X,T1,T2)
          & complexity(X,C1,T1)
          & complexity(X,C2,T2)
          & greater(T2,T1) )
       => ~ greater(C1,C2) ) )).

%--------------------------------------------------------------------------
